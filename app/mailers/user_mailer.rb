class UserMailer < ApplicationMailer
    default from: 'ecctester2222@gmail.com'

    def welcome_email
        @user = params[:user]
        # @url = 'http://example.com/login'
        # targetFolderPath = File.join(Rails.root,'/app/assets/images/sample.png')
        # attachments.inline['sample.png'] = File.read("app/assets/images/sample.png")

        # encoded_content = SpecialEncode(File.read("app/assets/images/sample.png"))
        # attachments['sample.png'] = {
        #     :mime_type => 'application/x-gzip',
        #     :encoding => 'SpecialEncoding',
        #     :content => encoded_content
        # }
        attachments['sample.pdf'] = File.read("app/assets/files/sample.pdf")
        # attachments['sample.png'] = File.read("app/assets/images/sample.png")
        attachments.inline['sample.png'] = File.read("app/assets/images/sample.png")
        mail(to: @user.email, subject: "Welcome Site")
    end
end
