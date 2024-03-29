require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Moneda
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.beginning_of_week = :sunday
    config.time_zone = 'Tokyo'
    config.i18n.available_locales = :ja
    config.i18n.default_locale = :ja
    config.active_storage.variant_processor = :mini_magick
  

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
