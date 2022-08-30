require "sinatra"
require "sinatra/reloader" if development?

get "/" do
 erb(:form)
end

get "/page" do
 p params
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
 erb :page
end