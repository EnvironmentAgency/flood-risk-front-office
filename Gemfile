source "https://rubygems.org"
ruby "2.7.1"

gem "govuk_template"
gem "govuk_elements_rails"#FIX, "~> 1.2.1"
gem 'govuk_frontend_toolkit', :git => "https://github.com/alphagov/govuk_frontend_toolkit_gem.git", :submodules => true

# Rails engine for static pages. https://github.com/thoughtbot/high_voltage
# NB declaring this in the engine does not seem to work, for example the routes
# do not appear
gem "high_voltage"#FIX, "~> 3.0.0"
# Use jquery as the JavaScript library
gem "jquery-rails"#, "~> 4.1.1"
# Use Postgres for the DB
gem "pg"#FIX, "~> 0.18.4"
gem "pundit"#FIX, "~> 1.1.0"
gem "rails", "~> 6.0.3"
# Use SCSS for stylesheets
gem "sass-rails"#FIX, "~> 5.0.4"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier"#FIX, "~> 3.0"
# Our capistrano scripts expect whenever (for scheduling cron jobs) to be available
gem "whenever"#FIX, "~> 0.9.4", require: false

gem "flood_risk_engine",
    git: "https://github.com/DEFRA/flood-risk-engine",
    branch: "chore/upgrade-to-rails-6"

# Allows us to automatically generate the change log from the tags, issues,
# labels and pull requests on GitHub. Added as a dependency so all dev's have
# access to it to generate a log, and so they are using the same version.
# New dev's should first create GitHub personal app token and add it to their
# ~/.bash_profile (or equivalent)
# https://github.com/skywinder/github-changelog-generator#github-token
# Then simply run `bundle exec rake changelog` to update CHANGELOG.md
# Should be in the :development group however when it is it breaks deployment.
# Hence moved outside group till we can understand why.
gem "github_changelog_generator", require: false

# Automatically loads environment variables from .env into ENV. Specified here
# rather than in the group in case any of the gems we add depend on env
# variables being available
gem "dotenv-rails"#FIX, "~> 2.1.1", groups: %i[development test]

group :development do
  # Pretty prints objects in console. Usage `$ ap some_object`
  gem "awesome_print"
  # Used to ensure the code base matches our agreed styles and conventions
  gem "rubocop"
end

group :development, :test do
  # ActiveRecord N+1 detection
  gem "bullet"
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem "byebug"
  # Provides Rails integration for factory_bot. Enables "build_dummy_data"
  # functionality in dev
  # N.B require is false so factories aren't loaded during e.g db:migrate
  gem "factory_bot_rails"#FIX, "~> 4.7", require: false
  # Used to generate fake data e.g. in the specs
  gem "faker"#FIX, "~> 1.7"
  gem "rspec-rails"#FIX, "~> 3.4.2"
end

group :test do
  gem "capybara"#FIX, "~> 2.6.2"
  gem "capybara-email"#FIX, "~> 2.5.0"
  gem "ci_reporter_rspec"#FIX, "~> 1.0.0", require: false
  # Needed for headless testing with Javascript or pages that ref external sites
  gem "poltergeist"#FIX, "~> 1.9.0"
  # Tool for checking code coverage
  gem "simplecov", require: false
end

group :production do
  # Use Passenger as our web-server/app-server (e.g. on AWS via Upstart, Heroku
  # via Procfile)
  gem "passenger", "~> 6.0", require: "phusion_passenger/rack_handler"
end
