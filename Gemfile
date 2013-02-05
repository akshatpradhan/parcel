# source :rubygems # Insecure from man-in-the-middle attacks.
source 'https://rubygems.org'

#  Mongoid 3 requires Ruby 1.9.3, per http://mongoid.org/en/mongoid/index.html
ruby '1.9.3'

#  Gems needed normally by Rails:

gem 'bundler', '>= 1.3.0.pre.2'
gem 'jquery-rails'
#  Rails 3.2.11 requires rack ~> 1.4.0.
gem 'rack',    '~> 1.4.4'
#   Bundle edge Rails instead:
#    gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'rails',   ' = 3.2.11'
gem 'rake',    '>= 10.0.3'

#  (End of gems needed normally by Rails.))

#  Gems used only for assets and not needed
#  in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
  gem 'less-rails', '>= 2.2.6'
  gem 'libv8', '>= 3.11.8'
#  See https://github.com/sstephenson/execjs#readme for more supported JavaScript runtimes:
  gem 'therubyracer', '~> 0.11.3', platform: :ruby, require: 'v8'
  gem 'twitter-bootstrap-rails', '>= 2.1.8'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'better_errors', '>= 0.3.2'
  gem 'binding_of_caller', '>= 0.6.8'
  gem 'debugger'
# Avoid bug in pry:
  gem 'pry', '~> 0.9.11.3', '!= 0.9.11.4'
  gem 'pry-doc', '~> 0.4.4'
  gem 'pry-rails'
  gem 'quiet_assets', '>= 1.0.1'
end

group :development, :test do
#  Keep (also) in the development group:
#    Factory girl, to use in the console.
#    RSpec, for generators and rake tasks.
  gem 'factory_girl_rails', '~> 4.1.0'
# gem 'rspec-rails', '>= 2.11.4'
  gem 'rspec-rails', '~> 2.12.2'
end

group :test do
  gem 'capybara', '~> 2.0.2'
  gem 'cucumber-rails', '~> 1.3.0', require: false
  gem 'database_cleaner', '~> 0.9.1'
  gem 'email_spec', '>= 1.4.0'
  gem 'launchy', '>= 2.1.2'
  gem 'mongoid-rspec', '>= 1.5.5'
end

group :production do
#  Deploy with Capistrano
#   gem 'capistrano'
  gem 'thin', '>= 1.5.0'
end

gem 'cancan', '>= 1.6.8'
gem 'figaro', '>= 0.5.0'
gem 'gmaps4rails'
#  To use Jbuilder templates for JSON
gem 'jbuilder'
gem 'mongoid', '>= 3.0.15'
#   gem 'omniauth', '>= 1.1.1' # Pulled in automatically by omniauth-facebook
gem 'omniauth-facebook'
gem 'rolify', '>= 3.2.0'
gem 'simple_form', '>= 2.0.4'
