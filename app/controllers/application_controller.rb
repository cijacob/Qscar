class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def default_url_options(options={})
    options.merge({ :locale => I18n.locale })
  end

  def set_locale
    locale = params[:locale] || cookies[:locale] || I18n.default_locale
    I18n.locale = locale
    cookies[:locale] = {value: locale, expires: 30.days}
    
  end

  def default_url_options
    { locale: I18n.locale }
  end

    
end
