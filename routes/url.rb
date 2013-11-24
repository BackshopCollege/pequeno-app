# encoding: UTF-8

class Pequeno < Sinatra::Application

	get '/url' do
	  @urls = Url.list_all
	  erb :"url/index"
	end

	get '/url.json' do
	  json Url.list_all
	end

	post '/url' do
	  Url.create(params)
	end

end