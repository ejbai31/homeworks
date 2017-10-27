class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url = ""
    mail(to: user.email, subject: 'RENT A CAT DAMMIT')
  end
end
