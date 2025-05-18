#!/usr/bin/env ruby
require_relative 'config/environment'

puts "Rails version: #{Rails.version}"
puts "Engine loaded: #{defined?(MissionControl::Cache) ? 'Yes' : 'No'}"
puts "Engine routes: #{MissionControl::Cache::Engine.routes.routes.size} routes defined"
puts "Routes:"
MissionControl::Cache::Engine.routes.routes.each do |route|
  puts "  #{route.path.spec}"
end
