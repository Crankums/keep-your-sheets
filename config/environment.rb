ENV['SINATRA_ENV'] ||= "development"

require 'bundler'

Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/development.sqlite"
)

if ENV['SINATRA_ENV'] == "development"
    require_relative "../secret.rb"
end
require_relative '../constants'
require_all 'app'