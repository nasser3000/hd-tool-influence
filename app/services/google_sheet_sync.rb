class GoogleSheetSync
  WEBHOOK_URL = ENV["GOOGLE_SHEET_WEBHOOK"]

  def self.push(participation)
    return unless WEBHOOK_URL.present?

    store = participation.store
    params = {
      first_name:       participation.first_name,
      last_name:        participation.last_name,
      instagram_handle: participation.instagram_handle,
      email:            participation.email,
      store_name:       store.name,
      store_city:       store.city,
      store_country:    store.country == "FR" ? "France" : "Belgique",
      store_offer:      store.offer.gsub("\n", " · ")
    }

    uri = URI(WEBHOOK_URL)
    uri.query = URI.encode_www_form(params)

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.open_timeout = 5
    http.read_timeout = 10

    # Suit les redirections Google (max 3)
    3.times do
      response = http.request(Net::HTTP::Get.new(uri))
      if %w[301 302].include?(response.code)
        uri = URI(response["location"])
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = uri.scheme == "https"
      else
        Rails.logger.info "[GoogleSheetSync] #{response.code} — #{response.body.truncate(100)}"
        break
      end
    end
  rescue => e
    Rails.logger.error "[GoogleSheetSync] Erreur : #{e.message}"
  end
end
