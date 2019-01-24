# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/register
  def register
  	user = User.find 2

    RegistrationMailer.register user
  end

end
