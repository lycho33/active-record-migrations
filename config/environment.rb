require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require 'bundler/setup'
Bundler.require

# put the code to connect to the database here
# Instead of dealing with SQL directly, we provide the migrations we want and Active Record takes care of creating
# using the establish_connection method from ActiveRecord::Base to connect to our artists database
ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

require_relative "../artist.rb"
