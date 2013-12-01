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
  list = ListUrls.new
  json list.run
end

post '/url' do
  Url.create(params)
end
