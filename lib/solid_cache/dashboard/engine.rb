require "importmap-rails"
require "turbo-rails"
require "stimulus-rails"

module SolidCache
  module Dashboard
    class Engine < ::Rails::Engine
      isolate_namespace SolidCache::Dashboard

      initializer "solid_cache-dashboard.assets" do |app|
        app.config.assets.paths << root.join("app/assets/stylesheets")
        app.config.assets.paths << root.join("app/javascript")
        app.config.assets.precompile += %w[ solid_cache_dashboard_manifest ]
      end

      initializer "solid_cache-dashboard.importmap", after: "importmap" do |app|
        SolidCache::Dashboard.importmap.draw(root.join("config/importmap.rb"))
        if app.config.importmap.sweep_cache && app.config.reloading_enabled?
          SolidCache::Dashboard.importmap.cache_sweeper(watches: root.join("app/javascript"))

          ActiveSupport.on_load(:action_controller_base) do
            before_action { SolidCache::Dashboard.importmap.cache_sweeper.execute_if_updated }
          end
        end
      end
    end
  end
end
