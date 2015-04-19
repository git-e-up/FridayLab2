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

get '/api/users' do
  content_type :json
  users = User.all
  users.to_json
end
#All users
get '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i)
  user.to_json
end
#A specific user
post '/api/users' do
  content_type :json
  user = User.create(params[:user])
  user.to_json
end
#Create a new user
put '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i)
  user.update(params[:user])
  user.to_json
end
#Update an existing user
patch '/api/users/:id' do
  content_type :json
  user = User.find(params[:id].to_i)
  user.update(params[:user])
  user.to_json
end
#Update an existing user
delete '/api/users/:id' do
  content_type :json
  user = User.delete(params[:id].to_i)
  user.to_json
end
#Delete an existing user
get '/api/locations' do
  content_type :json
  locations = Location.all
  locations.to_json
end
#All locations
get '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i)
  location.to_json
end
#A specific location
post '/api/locations' do
  content_type :json
  location = Location.create(params[:location])
  user.to_json
end
#Create a new location
put '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i)
  location.update(params[:location])
  user.to_json
end
#Update an existing location
patch '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i)
  location.update(params[:location])
  user.to_json
end
#Update an existing location
delete '/api/locations/:id' do
  content_type :json
  location = Location.delete(params[:id].to_i)
  location.to_json
end
#Delete an existing location
get '/api/visits' do
  content_type :json
  visits = Visit.all
  visits.to_json
end
#All visits
get '/api/visits/:id' do
A specific visit
post '/api/visits' do
Create a new visit
put '/api/visits/:id' do
Update an existing
patch '/api/visits/:id' do
Update an existing visit
delete '/api/visits/:id' do
Delete an existing visit
