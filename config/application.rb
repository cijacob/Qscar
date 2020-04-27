require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Qscar
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.site = {
      name: 'https://www.qscar.be' 
    }
    
    config.load_defaults 5.2
    config.i18n.fallbacks = [I18n.default_locale]
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :fr

    I18n.available_locales = [:en, :fr, :nl]
    #config.action_mailer.default_url_options = { host: 'localhost', :port => 3000  }
  end
end
