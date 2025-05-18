Rails.application.routes.draw do
  mount MissionControl::Cache::Engine => "/cache"
end
