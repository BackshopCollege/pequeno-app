require 'rubygems'
require 'bundler'

Bundler.require

# realoads the app without restarting with rackup config.ru
require 'sinatra/reloader' if development?

root =  ::File.dirname(__FILE__)
require ::File.join(root, 'pequeno')

# dummy dynamic router
# /home, home_controller
# /account, account_controller

# very dummy yet, /url/.json instead of /url.json

Dir.glob("#{root}/controllers/*.rb").each do |path|
  filename   = path.split('/')[8]
  controller = filename.split('.')[0] 
  map("/#{controller}") { run "#{controller.capitalize}Controller".constantize } if !controller.eql? "init"
end

map('/') { run HomeController }

# well, it's something ¯\(°_o)/¯
