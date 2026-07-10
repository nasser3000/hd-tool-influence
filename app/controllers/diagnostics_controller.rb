class DiagnosticsController < ApplicationController
  def run
    results = {}

    # Test Brevo API connectivity
    begin
      require "net/http"
      require "json"
      uri = URI("https://api.brevo.com/v3/account")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.open_timeout = 10
      http.read_timeout = 10
      req = Net::HTTP::Get.new(uri)
      req["api-key"] = ENV["BREVO_API_KEY"]
      req["accept"]  = "application/json"
      resp = http.request(req)
      results[:brevo_api] = "#{resp.code} #{resp.body[0..120]}"
    rescue => e
      results[:brevo_api] = "#{e.class}: #{e.message}"
    end

    # Test TCP port 587 to Brevo SMTP relay
    begin
      require "socket"
      require "timeout"
      t = Time.now
      Timeout.timeout(5) { s = TCPSocket.new("smtp-relay.brevo.com", 587); s.close }
      results[:brevo_smtp_587] = "OK (#{((Time.now - t)*1000).round}ms)"
    rescue Timeout::Error
      results[:brevo_smtp_587] = "Timeout (port bloqué)"
    rescue => e
      results[:brevo_smtp_587] = "#{e.class}: #{e.message}"
    end

    # Test send confirmation email
    p = Participation.last || fake_participation
    results[:last_participation] = "#{p.first_name} #{p.last_name} <#{p.email}> (store_id=#{p.store_id})"
    begin
      ParticipationMailer.confirmation(p).deliver_now
      results[:email_confirmation] = "OK → #{p.email}"
    rescue => e
      results[:email_confirmation] = "#{e.class}: #{e.message}"
    end

    # Test send admin notification email
    begin
      ParticipationMailer.admin_notification(p).deliver_now
      results[:email_admin] = "OK → #{ENV['ADMIN_EMAIL']}"
    rescue => e
      results[:email_admin] = "#{e.class}: #{e.message}"
    end

    # Test Google Sheet
    begin
      p = Participation.last
      if p
        GoogleSheetSync.push(p)
        results[:sheet] = "OK"
      else
        results[:sheet] = "No participation"
      end
    rescue => e
      results[:sheet] = "#{e.class}: #{e.message}"
    end

    results[:ruby]  = RUBY_VERSION
    results[:rails] = Rails.version
    results[:env]   = Rails.env

    render json: results
  end

  private

  def fake_participation
    Participation.new(
      first_name: "Test", last_name: "User",
      email: "test@example.com", instagram_handle: "@test",
      store_id: Store.first&.id, token: "diag-test"
    )
  end
end
