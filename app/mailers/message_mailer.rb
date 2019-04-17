class MessageMailer < ApplicationMailer

  def reception_mail 
    @message = params[:message]
    mail(from: @message.email, to: 'info@qscar.be', subject:'Informations from contact form')
  end 
end
