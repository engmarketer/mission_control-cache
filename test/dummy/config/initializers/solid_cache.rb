# Initialize SolidCache configuration
require 'solid_cache'

# Make sure the SolidCache configuration is available
Rails.application.config.solid_cache ||= ActiveSupport::OrderedOptions.new
Rails.application.config.solid_cache.backend = :redis
Rails.application.config.solid_cache.namespace = "solid_cache_test"
Rails.application.config.solid_cache.expires_in = 1.hour
