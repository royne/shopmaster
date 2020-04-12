class ApplicationMailer < ActionMailer::Base
  default from: 'ShopMaster <zaiensdev@gmail.com>',
          bcc: ["zaiensdev@gmail.com"]
  layout 'mailer'

  def send_deliver_to_company(user, token)
    @user = user
    @token = token
    mail(to: @user.email, subject: "Completa tu proceso en ShopMaster")
  end
end
