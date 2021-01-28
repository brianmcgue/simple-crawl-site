require 'rubygems'
require 'bundler'

Bundler.require

register Sinatra::Reloader

after_reload do
  puts 'reloaded'
end


get '/' do
  erb :index
end

get '/page1' do
  erb :page1
end

get '/page2' do
  erb :page2
end

get '/page3' do
  erb :page3
end

# get '/page4' do
#   erb :page4
# end

not_found do
  erb :not_found
end
