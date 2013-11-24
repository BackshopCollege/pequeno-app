class Pequeno < Sinatra::Application
  
	post '/login' do
	  User.login(params)
	end

	get '/profile' do
	end

	post '/config' do
	end
	
end