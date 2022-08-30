# Add the sinatra library, the webrick gem, and rack-test
bundle add sinatra sinatra-contrib webrick rack-test

# Create the main application file
touch app.rb

# Create the app_spec.rb integration tests file
mkdir spec/integration
touch spec/integration/app_spec.rb

# Create the config.ru file
touch config.ru

# App.rb
```ruby
require 'sinatra/base'
require 'sinatra/reloader'

# file: app.rb
require 'sinatra/base'
require 'sinatra/reloader'
# Example when Sinatra receives a request
# GET /

class Application < Sinatra::Base 
  # ...

# Request:
# POST /hello
post '/hello' do
  name = params[:name] # The value is 'Alice'
  return "Hello #{name}"
end
end

----

# file: config.ru
require './app'
run Application
```


