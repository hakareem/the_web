# Sinatra Route Design Recipe

```

Test-drive a Sinatra route

```

1. Design the Route Signature

```
1. The HTTP method
2. The path
3. Any query parameters (passed in the URL)
4. Body parameters (passed in the request body) 2. Design the Response
5. The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return 200 OK if the post exists, but 404 Not Found if the post is not found in the database.

Your response might return plain text, JSON, or HTML code.

Replace the below with your own design. Think of all the different possible responses your route will return.

```

```html
<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->

<html>
  <head></head>
  <body>
    <h1>Post title</h1>
    <div>Post content</div>
  </body>
</html>
```

<!-- EXAMPLE -->
<!-- Response when the post is not found: 404 Not Found -->

<html>
  <head></head>
  <body>
    <h1>Sorry!</h1>
    <div>We couldn't find this post. Have a look at the homepage?</div>
  </body>
</html>
```

3. Write Examples

```ruby
# Request:
POST /sort-names?names="Joe,Alice,Zoe,Julia,Kieran"

# Expected response:
Response for 200 OK

# Alphabetical order
names = params[:names]
names.split(",").sort.join(",") # Alice,Joe,Julia,Kieran,Zoe

# Request:
GET /posts?id=276278

# Expected response:
Response for 404 Not Found 
```
4. Encode as Tests Examples

# EXAMPLE

```ruby
require "spec_helper"

describe Application do
include Rack::Test::Methods

let(:app) { Application.new }

context "GET /" do
it 'returns 200 OK' do # Assuming the post with id 1 exists.
response = get('/posts?id=1')

      expect(response.status).to eq(200)
      # expect(response.body).to eq(expected_response)
    end

    it 'returns 404 Not Found' do
      response = get('/posts?id=276278')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end
  end
end
```


5. Implement the Route

```
   Write the route and web server code to implement the route behaviour.

```
