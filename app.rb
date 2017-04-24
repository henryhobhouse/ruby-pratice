require 'sinatra'
require 'shotgun'

get '/' do
  "hello!"
end

get '/secret' do
  "How did you know!! :?"
end

get '/cat' do
"<div>
      <img src='http://bit.ly/1eze8aE' alt='cat' style='width:454px;height:273px;border: 2px dashed blue;'>
</div>"
end

set :session_secret, 'super secret'
