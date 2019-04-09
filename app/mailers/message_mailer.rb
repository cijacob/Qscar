class MessageMailer < ApplicationMailer

  def reception_mail 
    @message = params[:message]
    mail(to: 'jacobcindy@live.be', subject:'Informations from contact form')
  end 
end
