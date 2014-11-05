source 'https://rubygems.org'

gem 'rails', '3.2.14'

gem 'sinatra', require: 'sinatra/base'

gem 'logutils'
gem 'worlddb'
gem 'beerdb'

#########################
# data

gem 'worlddb-data',    '99', :git => 'https://github.com/openmundi/world.db.git'
gem 'worlddb-data-at', '99', :git => 'https://github.com/openmundi/austria.db.git'

gem 'beerdb-data-at',    '99', :git => 'https://github.com/openbeer/at-austria.git'

##################################
# logos

gem 'worlddb-flags'  # use bundled country flags

########
# add engines

## fix:
### gem 'beerdb-admin', '0.0.1', path: './engine'

##########
# add sinatra (mountable) app(let)s

gem 'about'      # mountable app - about - sys info pages
gem 'dbbrowser'  # mountable app

group :production do
  gem 'pg'
  gem 'thin'    # use faster multiplexed (w/ eventmachine) web server
end

group :development do
  gem 'sqlite3'
  gem 'annotate'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier'
end

gem 'jquery-rails'
