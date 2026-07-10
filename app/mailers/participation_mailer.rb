class ParticipationMailer < ApplicationMailer
  def confirmation(participation)
    @participation = participation
    @store = participation.store

    mail(
      to: participation.email,
      subject: "🍦 Ta confirmation Häagen-Dazs #{@store.city} est prête !"
    )
  end

  def admin_notification(participation)
    @participation = participation
    @store = participation.store

    admin_email = ENV.fetch("ADMIN_EMAIL", "influence@haagendazs-france.fr")

    mail(
      to: admin_email,
      subject: "Nouvelle inscription — #{@store.name} · #{participation.first_name} #{participation.last_name}"
    )
  end
end
