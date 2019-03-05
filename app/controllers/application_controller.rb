class ApplicationController < ActionController::Base
    before_action :set_locale

    private

  def default_url_options(options={})
    options.merge({ :locale => I18n.locale })
  end

  def set_locale
    if params[:locale] and I18n.available_locales.include?(params[:locale].to_sym)
      I18n.locale = params[:locale]
    else
      I18n.locale = I18n.default_locale
    end
  end
  def default_url_options
    { locale: I18n.locale }
  end

    
end
