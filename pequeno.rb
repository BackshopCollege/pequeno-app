require 'sinatra/reloader' if development?

class Pequeno < Sinatra::Application
end

require_relative 'routes/init'
require_relative 'models/init'
