class UserMailer < ApplicationMailer
    default from: 'notifications@exammple.com'

    def welcome_email
        @user = params[:user]
        # @url = 'http://example.com/login'
        mail(to: @user.email, subject: "Welcome Site")
    end
end
