require 'rubygems'
require 'bundler'

Bundler.require

register Sinatra::Reloader

MAX_PAGES = 100

after_reload do
  puts 'reloaded'
end

get '/' do
  erb :index
end

get '/page/:id' do
  @id = params[:id].to_i
  raise Sinatra::NotFound unless @id.between?(1, MAX_PAGES)
  erb :page
end

not_found do
  erb :not_found
end
