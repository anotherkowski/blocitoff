source 'https://rubygems.org'

ruby '2.2.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3' --- removed 3/20 to deploy to heroku, following instructions from http://docs.railsbridge.org/intro-to-rails/deploying_to_heroku
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Devise for user authentication and authorization
gem 'devise'
# Use slim-rails for html templates
gem 'slim-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use bootstrap to style the application
gem 'bootstrap-sass', '~> 2.3'
gem 'bootstrap-generators', '~> 3.3.4'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Automate rake tasks with whenever gem
gem 'whenever', :require => false
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'foreman'
  gem 'sqlite3'
  gem 'factory_girl_rails', :require => false
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'capybara', '~> 2.3.0'
  gem 'nyan-cat-formatter'
  gem 'shoulda-matchers', '~> 3.1'
end

group :production do
  gem 'pg'
end
