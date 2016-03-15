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

get '/random-cat' do
  @name = ['Steve', 'Daisy', 'Brian'].sample
  erb(:index)
end
get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
