require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret."
end

get '/carrot' do
  "I love carrot."
end

get '/cat' do
  '<img src="http://bit.ly/1eze8aE" style="border: 2px dashed black"/>' 
end
