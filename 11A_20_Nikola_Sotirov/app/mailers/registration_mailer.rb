class RegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.registration_mailer.register.subject
  #
  def register(user)
    @greeting = "Why hello, there"

    mail to: user.email, subject: "Registration verification pending!"
  end
end
