class Participation < ApplicationRecord
  belongs_to :store

  validates :first_name, :last_name, :instagram_handle, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :instagram_handle, format: { with: /\A@?[\w.]+\z/, message: "format invalide" }
  validates :token, uniqueness: true

  before_validation :generate_token, on: :create
  before_validation :normalize_instagram, on: :create

  private

  def generate_token
    self.token ||= SecureRandom.urlsafe_base64(16)
  end

  def normalize_instagram
    self.instagram_handle = "@#{instagram_handle.delete_prefix('@')}" if instagram_handle.present?
  end
end
