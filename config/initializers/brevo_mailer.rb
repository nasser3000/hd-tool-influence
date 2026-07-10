require "brevo_delivery"
ActionMailer::Base.add_delivery_method :brevo, BrevoDelivery
