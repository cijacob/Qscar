class ApplicationMailer < ActionMailer::Base

  default from: 'jacobcindy@live.be'
  layout 'mailer'
  
  def mailer_locale
    I18n.locale
  end
end
