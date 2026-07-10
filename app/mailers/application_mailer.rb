class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch("MAILER_FROM", "Häagen-Dazs Influence <no-reply@haagendazs-influence.fr>")
  layout "mailer"
end
