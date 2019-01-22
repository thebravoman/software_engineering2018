class ConfirmationMailer < ApplicationMailer
    default from: "sharedocs@noreply.com"

    def confirmation_email user
        @user = user
        @url = "/users/#{@user.id}/confirm"
        mail(from: "sharedocs@noreply.com", to: @user.email, subject: 'Confirm your registration on ShareDocs')
    end
end
