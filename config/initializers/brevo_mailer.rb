require Rails.root.join("lib/brevo_delivery").to_s
ActionMailer::Base.add_delivery_method :brevo, BrevoDelivery
