source 'https://rubygems.org'


gem 'rails', '4.2.5'

gem 'rails-api'

gem 'rake', '~> 10.5'

gem 'pg'

gem 'figaro'

gem 'omniauth'

gem 'devise_token_auth'

# Use ActiveModelSerializers (AMS) to apply serialization to the APi
gem 'active_model_serializers', '~> 0.9.4'

# Log external http requests
gem 'httplog'

# CORS
gem 'rack-cors', require: 'rack/cors'

# Paginate data in the API
gem 'will_paginate'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :development do
  # Get nicer rails errors in dev :)
  gem 'better_errors'
  gem 'quiet_assets'
  # gem 'spring'
end

group :test do
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
