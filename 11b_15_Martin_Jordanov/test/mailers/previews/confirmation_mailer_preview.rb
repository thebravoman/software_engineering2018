# Preview all emails at http://localhost:3000/rails/mailers/confirmation_mailer
class ConfirmationMailerPreview < ActionMailer::Preview
    def confirmation_mailer_preview
        ConfirmationMailer.confirmation_email(User.first)
    end
end
