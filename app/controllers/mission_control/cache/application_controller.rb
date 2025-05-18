module MissionControl
  module Cache
    class ApplicationController < ActionController::Base
      ActionController::Base::MODULES.each do |mod|
        include mod unless self < mod
      end

      layout "mission_control/cache/application"

      # Include helpers if not already included
      helper MissionControl::Cache::ApplicationHelper unless self < MissionControl::Cache::ApplicationHelper
      helper Importmap::ImportmapTagsHelper unless self < Importmap::ImportmapTagsHelper
    end
  end
end
