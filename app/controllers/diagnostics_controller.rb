class DiagnosticsController < ApplicationController
  def run
    results = {}

    # Test SMTP
    begin
      mail = ParticipationMailer.admin_notification(Participation.last || fake_participation)
      mail.deliver_now
      results[:smtp] = "OK"
    rescue => e
      results[:smtp] = "#{e.class}: #{e.message}"
    end

    # Test Google Sheet
    begin
      p = Participation.last
      if p
        GoogleSheetSync.push(p)
        results[:sheet] = "OK (check sheet)"
      else
        results[:sheet] = "No participation found"
      end
    rescue => e
      results[:sheet] = "#{e.class}: #{e.message}"
    end

    results[:ruby]  = RUBY_VERSION
    results[:rails] = Rails.version
    results[:env]   = Rails.env
    results[:smtp_host] = ENV["SMTP_HOST"]
    results[:smtp_user] = ENV["SMTP_USERNAME"]

    render json: results
  end
end
