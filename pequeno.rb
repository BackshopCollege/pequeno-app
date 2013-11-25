class ApplicationController < Sinatra::Application
end

# don't like this here
require_relative 'controllers/init'
require_relative 'models/init'