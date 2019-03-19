class MessageMailer < ApplicationMailer
  def contact_me(message)
    @body = message.body

    mail to: "jacobcindy@live.be", from: message.email
  end
end
