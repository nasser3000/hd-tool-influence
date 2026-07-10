class HomeController < ApplicationController
  def index
    @country = params[:country]&.upcase
    @country = nil unless %w[FR BE].include?(@country)

    @stores = Store.active
    @stores = @stores.by_country(@country) if @country
    @stores = @stores.order(Arel.sql("CASE country WHEN 'FR' THEN 0 ELSE 1 END, city"))
  end
end
