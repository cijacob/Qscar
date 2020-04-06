class UserMailer < ApplicationMailer
  default from:  "jacobcindy@live.be"

  def confirm_email(user)
    @user = user 
    mail(from: 'jacobcindy@live.be', to: user.email, subject: "Votre inscription sur Qscar" ) 
  end 

end
