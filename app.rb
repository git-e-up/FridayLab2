require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :database => "travel"
)

require './models/locations.rb'
require './models/users.rb'
require './models/visits.rb'


get '/' do
  erb :index
end
