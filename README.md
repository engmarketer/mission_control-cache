# MissionControl::Cache
A Mission Control dashboard for monitoring and managing SolidCache.

## Usage

After installing the gem, mount the engine in your Rails application's routes:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount MissionControl::Cache::Engine => "/cache"
  
  # Your other routes...
end
```

This will make the dashboard available at `/cache` in your application.

### Configuration

Make sure SolidCache is properly configured in your application:

```ruby
# config/initializers/solid_cache.rb
Rails.application.config.solid_cache.backend = :redis
Rails.application.config.solid_cache.namespace = "your_app_cache"
Rails.application.config.solid_cache.expires_in = 1.hour
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "mission_control-cache"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install mission_control-cache
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
