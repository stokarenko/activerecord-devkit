require 'bundler/setup'
Bundler.require(:default)

require 'active_record'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
