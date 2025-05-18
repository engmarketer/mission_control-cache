require "importmap-rails"
require "turbo-rails"
require "stimulus-rails"

module MissionControl
  module Cache
    class Engine < ::Rails::Engine
      isolate_namespace MissionControl::Cache

      initializer "mission_control-cache.assets" do |app|
        app.config.assets.paths << root.join("app/assets/stylesheets")
        app.config.assets.paths << root.join("app/javascript")
        app.config.assets.precompile += %w[ mission_control_cache_manifest ]
      end

      initializer "mission_control-cache.importmap", after: "importmap" do |app|
        MissionControl::Cache.importmap.draw(root.join("config/importmap.rb"))
        if app.config.importmap.sweep_cache && app.config.reloading_enabled?
          MissionControl::Cache.importmap.cache_sweeper(watches: root.join("app/javascript"))

          ActiveSupport.on_load(:action_controller_base) do
            before_action { MissionControl::Cache.importmap.cache_sweeper.execute_if_updated }
          end
        end
      end
    end
  end
end
