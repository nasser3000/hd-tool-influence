class Store < ApplicationRecord
  has_many :participations

  scope :active, -> { where(active: true) }
  scope :by_country, ->(country) { where(country: country) }
  scope :france, -> { by_country("FR") }
  scope :belgique, -> { by_country("BE") }

  validates :name, :city, :country, :address, :offer, presence: true
end
