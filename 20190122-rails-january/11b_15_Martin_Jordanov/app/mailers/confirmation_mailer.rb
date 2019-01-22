class ConfirmationMailer < ApplicationMailer

    def confirmation_email user
        @user = user
        @url = "/users/#{@user.id}/confirm"

            mail(to: @user.email, content_type: "text/html", subject: 'Confirm your registration on ShareDocs')

    end
end
