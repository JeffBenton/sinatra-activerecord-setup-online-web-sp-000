
ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'




require "bundler/setup"
require 'yaml'
require 'active_record'

Bundler.require


DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/tvshows.db'
})

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

require_all 'app'