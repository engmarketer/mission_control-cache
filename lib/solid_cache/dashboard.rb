require "solid_cache/dashboard/version"
require "solid_cache/dashboard/engine"

module SolidCache
  module Dashboard
    mattr_accessor :base_controller_class, default: "::ApplicationController"
    mattr_accessor :importmap, default: Importmap::Map.new
  end
end
