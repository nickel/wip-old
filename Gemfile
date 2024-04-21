# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.3"

gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"

gem "prism", "0.24.0" # fix prism version due to https://github.com/Shopify/packwerk/issues/400

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i(windows jruby)

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i(mri windows)
end

group :development do
  gem "brakeman"
  gem "bundler-audit"
  gem "foreman"
  gem "packwerk"
  gem "rubocop"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
