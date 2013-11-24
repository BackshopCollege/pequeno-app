require 'rubygems'
require 'bundler' 
require 'sinatra'
require "sinatra/json"

class Pequeno < Sinatra::Application
	# Bundler.require 
end

require_relative 'routes/init'
require_relative 'models/init'
