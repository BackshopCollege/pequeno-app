class UrlController < ApplicationController

	get '/' do
	  @urls = Url.list_all
	  erb :"url/index"
	end

	get '/.json' do
	  json Url.list_all
	end

	post '/url' do
	  Url.create(params)
	end

end