class UserMailer < ApplicationMailer

  def confirm_email(user)
    @user = user 
    mail( to: user.email, subject: "Votre inscription") 
  end 

end
