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
  @random_name = ['Steve', 'Daisy', 'Brian'].sample
  erb(:index)
end
