class Pequeno < Sinatra::Application

  get '/' do
	  erb :"home/index"
	end
	
end