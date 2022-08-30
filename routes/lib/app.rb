require "sinatra/base"

class Application < Sinatra::Base
  get "/" do
    return "?"
  end

  get "/hello" do
    name = params[:name]
    return "Hello #{name}"
  end

  get "/names" do
    list_of_names = params[:list_of_names]
    return list_of_names
  end

  post "/submit" do
    name = params[:name]
    message = params[:message]
    return "Thanks #{name}, you sent this message: #{message}"
  end

  post '/sort-names' do
    names = params[:names]
    return names.split(",").sort.join(",")
  end

end