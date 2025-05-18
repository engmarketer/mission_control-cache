module MissionControl
  module Cache
    class DashboardController < ApplicationController
      def index
        @total_entries = Rails.cache.instance_variable_get(:@data)&.size || 0
        @hit_rate = "#{rand(70..99)}%" # Placeholder for actual hit rate calculation
        @memory_usage = "#{rand(10..100)} MB" # Placeholder for actual memory usage
        
        # Sample recent operations for display
        @recent_operations = sample_operations
      end
      
      private
      
      def sample_operations
        # This is just sample data - in a real implementation, you would track actual cache operations
        operations = []
        10.times do |i|
          operations << {
            key: "cache_key_#{i}",
            operation: ["read", "write", "delete"].sample,
            size: "#{rand(1..1000)} KB",
            timestamp: Time.now - rand(1..60).minutes
          }
        end
        operations
      end
    end
  end
end
