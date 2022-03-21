# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'active_model_serializers', '~> 0.10.12'
gem 'activestorage'
gem 'acts-as-taggable-on', '~> 9.0'
gem 'ancestry'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'breadcrumbs_on_rails'
gem 'devise', '~> 4.8'
gem 'doorkeeper', '~> 5.5', '>= 5.5.2'
gem 'faker', '~> 2.16.0'
gem 'figaro', '~> 1.1', '>= 1.1.1'
gem 'meta-tags'
gem 'pagy', '~> 4.10', '>= 4.10.1'
gem 'pundit', '~> 2.1'
gem 'rails_admin'
gem 'simple_form'

gem 'oj', '~> 3.11', '>= 3.11.8'
# An experimental Object-base Parallel Evaluation Environment.
gem 'oj_mimic_json', '~> 1.0', '>= 1.0.1'

gem 'omniauth', '~> 2.0', '>= 2.0.4'
gem 'omniauth-facebook', '~> 8.0'
gem 'omniauth-rails_csrf_protection', '~> 1.0'

gem 'bootstrap-sass'
gem 'jquery-rails'

group :development, :test do
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot', '~> 6.2'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'pry', '~> 0.14.1'
  gem 'rspec-json_expectations', '~> 2.2'
  gem 'rspec-rails', '~> 5.0.0'

  gem 'rails-controller-testing'
end

group :development do
  gem 'annotate', '~> 3.1', '>= 3.1.1', require: false
  gem 'brakeman', require: false
  gem 'bullet', '~> 6.1', '>= 6.1.4'
  # Code metric tool for rails codes
  gem 'rails_best_practices', '~> 1.21', require: false
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Code style checking and code formatting tool
  gem 'rubocop', require: false
  gem 'rubocop-faker', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false
  gem 'rubocop-rspec', require: false

  gem 'rubycritic', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'launchy', '~> 2.5'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'db-query-matchers'
  gem 'json_spec', '~> 1.1', '>= 1.1.5'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
