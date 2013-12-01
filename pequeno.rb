require 'sinatra'

get '/' do
  'Welcome'
end

post '/login' do
  User.login(params)
end

get '/profile' do
end

post '/config' do
end

get '/url/index.json' do
  json Url.list_all
end

post '/url' do
  Url.create(params)
end
