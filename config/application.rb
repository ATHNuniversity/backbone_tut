require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backbone
  class Application < Rails::Application
    Rails.application.config.assets.precompile += %w( lodash.js )
    Rails.application.config.assets.precompile += %w( backbone.js )
  end
end
