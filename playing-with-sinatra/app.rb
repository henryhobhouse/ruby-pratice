require 'sinatra'
require 'shotgun'

get '/' do
  "hello!"
end

get '/secret' do
  "How did you know!! :?"
end

get '/cat' do
  erb(:index)
end

set :session_secret, 'super secret'
