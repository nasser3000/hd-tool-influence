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

    # Suit les redirections Google (max 5)
    5.times do |i|
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = (uri.scheme == "https")
      http.open_timeout = 15
      http.read_timeout = 30

      response = http.request(Net::HTTP::Get.new(uri))
      Rails.logger.info "[GoogleSheetSync] #{i+1}. #{response.code} #{uri.host}"

      if %w[301 302 303].include?(response.code)
        location = response["location"]
        break unless location
        uri = URI(location)
      else
        Rails.logger.info "[GoogleSheetSync] OK — #{response.body.to_s.truncate(120)}"
        break
      end
    end
  rescue => e
    Rails.logger.error "[GoogleSheetSync] Erreur : #{e.class} — #{e.message}"
  end
end
