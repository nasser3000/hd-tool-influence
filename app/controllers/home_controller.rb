class HomeController < ApplicationController
  def index
    @country = params[:country]&.upcase
    @country = nil unless %w[FR BE].include?(@country)

    scoped = Store.active
    scoped = scoped.by_country(@country) if @country

    @cities = scoped.order(:city).distinct.pluck(:city)

    @city = params[:city].presence
    @city = nil unless @cities.include?(@city)

    @stores = scoped
    @stores = @stores.where(city: @city) if @city
    @stores = @stores.order(Arel.sql("CASE country WHEN 'FR' THEN 0 ELSE 1 END, city"))
  end
end
