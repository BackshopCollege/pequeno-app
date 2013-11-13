# myapp.rb
require 'pry'
require 'sinatra'
require 'json'
require './model/url'

get '/' do
  erb :index
end

get '/index.json' do
  content_type :json
  erb :index_json
end

get '/url' do
  @url = Url.list_all
  erb :url_list
end

get '/url.json' do
  content_type :json
  Url.list_all.to_json
end

post '/login' do
  User.login(params)
end

post '/url' do
  Url.create(params)
end

get '/profile' do
end

post '/config' do
end



