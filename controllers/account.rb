class AccountController < ApplicationController
  
  get '/' do
  end

	post '/login' do
	  User.login(params)
	end

	get '/profile' do
	end

	post '/config' do
	end
	
end