require "app"
require "rack/test"

describe Application do
  include Rack::Test::Methods  # allow us to use rack-test helper methods
  let(:app) { Application.new } 

  context "GET /" do
    it "makes a get request" do
      response = get("/")
      expect(response.status).to be(200)
      expect(response.body).to eq ("?")
    end

    it "greets the user" do
      response = get("/hello?name=Mark")
      expect(response.body).to eq("Hello Mark")
    end

    it "returns list of names" do
      response = get("/names", list_of_names:"Julia, Mary, Karim")
      expect(response.body).to eq ("Julia, Mary, Karim")
      end
    end

    context "POST /" do
    it "sorts names passed in as params in alphabetical order" do
      response = post("/sort-names", names:"Joe,Alice,Zoe,Julia,Kieran")
      result = response.body.split(",").sort.join(",")
      expect(response.status).to be(200)
      expect(result).to eq ("Alice,Joe,Julia,Kieran,Zoe")
    end
  end
end