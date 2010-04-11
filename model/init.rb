# Here goes your database connection and options:

DataMapper::Database.setup({
  :adapter  => 'postgres',
  :host     => 'localhost',
  :username => 'alex',
  :password => '',
  :database => 'clipsync_development'
})

# Here go your requires for models:
require 'model/user'
require 'model/clip'

