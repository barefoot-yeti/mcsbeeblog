class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @user = params[:user]
    @post = params[:post]
    @greeting = "Hi"
    attachments['newpost.png'] = File.read('app/assets/images/newpost.png')
    mail(
      from: "Support <support@tinyrails.com>",
      to: User.all.pluck(:email),
      subject: "New post created"
    ) 
  end
end
