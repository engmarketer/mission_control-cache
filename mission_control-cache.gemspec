require_relative "lib/mission_control/cache/version"

Gem::Specification.new do |spec|
  spec.name        = "mission_control-cache"
  spec.version     = MissionControl::Cache::VERSION
  spec.authors     = [ "EngMarketer" ]
  spec.email       = [ "engmarketer@fastmail.com" ]
  spec.homepage    = "https://github.com/engmarketer/mission_control-cache"
  spec.summary     = "Mission Control for SolidCache"
  spec.description = "Mission Control dashboard for monitoring and managing SolidCache"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  rails_version = ">= 7.1"
  spec.add_dependency "activerecord", rails_version
  spec.add_dependency "actionpack", rails_version
  spec.add_dependency "actioncable", rails_version
  spec.add_dependency "railties", rails_version
  spec.add_dependency "importmap-rails", ">= 1.2.1"
  spec.add_dependency "turbo-rails"
  spec.add_dependency "stimulus-rails"
  spec.add_dependency "irb", "~> 1.13"
  spec.add_dependency "solid_cache"

  spec.add_development_dependency "resque"
  spec.add_development_dependency "solid_queue", "~> 1.0.1"
  spec.add_development_dependency "selenium-webdriver"
  spec.add_development_dependency "resque-pause"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "debug"
  spec.add_development_dependency "redis"
  spec.add_development_dependency "redis-namespace"
  spec.add_development_dependency "rubocop", "~> 1.52.0"
  spec.add_development_dependency "rubocop-performance"
  spec.add_development_dependency "rubocop-rails-omakase"
  spec.add_development_dependency "better_html"
  spec.add_development_dependency "propshaft"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "puma"
end
