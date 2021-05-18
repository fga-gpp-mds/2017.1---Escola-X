source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rubocop' , require: false
gem 'rails', '~> 5.0.1'

gem 'puma', '~> 4.3'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'bcrypt', '~> 3.1.7'

gem 'jquery-inputmask-rails'

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bootswatch-rails'

gem 'font-awesome-rails'

gem 'carrierwave', '~> 0.10.0'

gem 'mini_magick', '~> 4.3'

gem "paperclip-dropbox", ">= 1.1.7"

gem 'rails-i18n', '~> 5.0.0'

gem "paperclip", "~> 3.0"

gem 'responders'
gem 'active_model_serializers'

group :development, :test do

  gem 'sqlite3'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '>= 3.5.0'
  gem 'byebug', platform: :mri
  gem 'coveralls', '~> 0.8.19', require: false
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
  gem 'selenium-webdriver', '~> 2.53'
  gem 'chromedriver-helper'
  gem 'simplecov'
  gem 'simplecov-rcov'
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'validates_cpf_cnpj'
