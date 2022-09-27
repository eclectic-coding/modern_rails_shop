require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ModernRailsShop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    # config.assets.precompile << /\.(?:eot|woff|ttf)$/

    # current_account will be used, not current_user
    config.action_policy.controller_authorize_current_user = false

    config.generators do |g|
      g.system_tests = nil
      g.stylesheets = false
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false
    end
  end
end
