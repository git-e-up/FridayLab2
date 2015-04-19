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
All users
get '/api/users/:id' do
A specific user
post '/api/users' do
Create a new user
put '/api/users/:id' do
Update an existing user
patch '/api/users/:id' do
Update an existing user
delete '/api/users/:id' do
Delete an existing user
get '/api/locations' do
All locations
get '/api/locations/:id' do
A specific location
post '/api/locations' do
Create a new location
put '/api/locations/:id' do
Update an existing location
patch '/api/locations/:id' do
Update an existing location
delete '/api/locations/:id' do
Delete an existing location
get '/api/visits' do
All visits
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
