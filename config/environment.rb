require "bundler/setup"
require 'yaml'
require 'active_record'
ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

DB = ActiveRecord::Base.establish_connection({
  adapter: 'sqlite3',
  database: 'db/database.db'
})

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

require './app'



