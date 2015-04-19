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
  location.to_json
end
#Create a new location
put '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i)
  location.update(params[:location])
  location.to_json
end
#Update an existing location
patch '/api/locations/:id' do
  content_type :json
  location = Location.find(params[:id].to_i)
  location.update(params[:location])
  location.to_json
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
  visits.to_json(:include => [:user, :location])
end
#All visits
get '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id].to_i)
  visit.to_json(:include => [:user, :location])
end
#A specific visit
post '/api/visits' do
  content_type :json
  visit = Visit.create(params[:visit])
  visit.to_json
end
# Create a new visit
put '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id].to_i)
  visit.update(params[:visit])
  visit.to_json
end

# Update an existing visit
patch '/api/visits/:id' do
  content_type :json
  visit = Visit.find(params[:id].to_i)
  visit.update(params[:visit])
  visit.to_json
end
# Update an existing visit


delete '/api/visits/:id' do
  content_type :json
  visit = Visit.delete(params[:id].to_i)
  visit.to_json
end
# Delete an existing visit


#Matthew=# CREATE DATABASE travel

#travel=# CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(255));


#travel=# CREATE TABLE locations (id SERIAL PRIMARY KEY, city VARCHAR(255));

#travel=# CREATE TABLE visits (id SERIAL PRIMARY KEY, user_id INTEGER, location_id INTEGER);
