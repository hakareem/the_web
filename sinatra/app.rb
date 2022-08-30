require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  erb :homepage
end

get '/secret' do
  "Who asked?"
end

get '/cat-form' do
  erb :form
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

post '/named-cat' do
  @name = params[:name]
  erb :index
end

get "/hello" do
  name = params[:name]
  return "Hello #{name}"
end

post "/submit" do
  name = params[:name]
  message = params[:message]

  return "Thanks #{name}, you sent this message: #{message}"
end

post "/sort-names" do
  names = params[:names]
  names = names.split(",").sort.join
  return "#{names}"
end