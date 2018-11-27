require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module WebApp
  class Application < Rails::Application
    config.load_defaults 5.2

    config.assets.paths << File.join(Rails.root, 'vendor', 'kits')
    config.assets.paths << File.join(Rails.root, 'vendor', 'javascripts')
    config.assets.paths << File.join(Rails.root, 'vendor', 'stylesheets')
    config.assets.paths << File.join(Rails.root, 'app', 'assets', 'fonts')
    
    config.time_zone = 'Brasilia'
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'pt-BR'

    config.generators.system_tests = nil
  end
end
