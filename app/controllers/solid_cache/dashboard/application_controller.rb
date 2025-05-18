module SolidCache
  module Dashboard
    class ApplicationController < ActionController::Base
      ActionController::Base::MODULES.each do |mod|
        include mod unless self < mod
      end

      layout "solid_cache/dashboard/application"

      # Include helpers if not already included
      helper SolidCache::Dashboard::ApplicationHelper unless self < SolidCache::Dashboard::ApplicationHelper
      helper Importmap::ImportmapTagsHelper unless self < Importmap::ImportmapTagsHelper
    end
  end
end
