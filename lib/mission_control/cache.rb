require "mission_control/cache/version"
require "mission_control/cache/engine"

module MissionControl
  module Cache
    mattr_accessor :base_controller_class, default: "::ApplicationController"
    mattr_accessor :importmap, default: Importmap::Map.new
  end
end
