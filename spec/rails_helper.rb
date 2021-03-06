# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
# Add additional requires below this line. Rails is not loaded until this point!
require 'spec_helper'
require 'rspec/rails'
# note: require 'devise' after require 'rspec/rails'
require 'devise'
require 'shoulda/matchers'
require 'slim'
require 'factory_girl_rails'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    # Choose a test framework:
    with.test_framework :rspec
    # Implies all Rails libraries
    with.library :rails
  end
end

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # For Devise <= 4.1.1
  config.include Devise::Test::ControllerHelpers, :type => :controller
  # config.include Devise::TestHelpers, :type => :controller
  config.include Devise::Test::ControllerHelpers, type: :view


  # Include FactoryGirl so we can use 'create' instead of 'FactoryGirl.create'
   config.include FactoryGirl::Syntax::Methods

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!

end
