source 'http://rubygems.org'

gem 'rails', '3.2.6'
gem 'bootstrap-sass', '2.0.0'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3'
  gem 'heroku'
end

gem 'annotate', '~> 2.4.1.beta', group: :development
gem 'bcrypt-ruby', '3.0.1'
# Gems used only for assets and not required
# in production environments by default.ge
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

source 'http://gemcutter.org'
gem "meta_search"