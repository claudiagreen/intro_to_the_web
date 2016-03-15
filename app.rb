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

post '/named-cat' do
  p params
  @name = params[:name]
  @colour = params[:colour]
  erb(:index)
end

get '/cat-form' do
    erb(:form)
end
