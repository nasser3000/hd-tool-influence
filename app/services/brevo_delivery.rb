require "net/http"
require "json"

class BrevoDelivery
  attr_accessor :settings

  def initialize(settings)
    @settings = settings
  end

  def deliver!(mail)
    api_key = ENV["BREVO_API_KEY"]

    raw_from   = mail[:from]&.value.to_s
    if (m = raw_from.match(/^(.+?)\s*<(.+?)>$/))
      from_name  = m[1].strip
      from_email = m[2].strip
    else
      from_email = Array(mail.from).first
      from_name  = "Häagen-Dazs Influence"
    end

    html = mail.multipart? ? mail.html_part&.decoded : mail.decoded
    text = mail.multipart? ? mail.text_part&.decoded : nil

    payload = {
      sender:      { name: from_name, email: from_email },
      to:          mail.to.map { |e| { email: e } },
      subject:     mail.subject,
      htmlContent: html
    }
    payload[:textContent] = text if text

    uri = URI("https://api.brevo.com/v3/smtp/email")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.open_timeout = 10
    http.read_timeout = 15

    req = Net::HTTP::Post.new(uri)
    req["api-key"]      = api_key
    req["content-type"] = "application/json"
    req["accept"]       = "application/json"
    req.body = payload.to_json

    response = http.request(req)
    Rails.logger.info "[Brevo] #{response.code} — #{response.body[0..120]}"

    raise "[Brevo] Erreur #{response.code}: #{response.body}" unless response.code.to_i < 300
  end
end
