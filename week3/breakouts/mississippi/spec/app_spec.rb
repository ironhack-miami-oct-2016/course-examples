require "rack/test"

require_relative "../app.rb"


RSpec.describe "Mississippi App" do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end


  describe "get /" do
    it "responds with 200 OK" do
      get "/"

      expect(last_response).to be_ok
    end

    it "contains Bacon" do
      get "/"

      expect(last_response.body).to include("Bacon")
    end
  end


  describe "get /new_product" do
    it "contains form that goes to post /add_product" do
      get "/new_product"

      expect(last_response.body).to include("method=\"post\"")
      expect(last_response.body).to include("action=\"/add_product\"")
    end
  end


  describe "post /add_product" do
    it "redirects to home page with the new product" do
      form_hash = {
        :product_name => "Falcon",
        :product_price => 1200,
        :product_picture => "https://s-media-cache-ak0.pinimg.com/originals/0b/6f/d1/0b6fd19afbc91612cb837765f982d6a2.jpg",
        :agree_to_terms => "on",
      }

      post "/add_product", form_hash

      expect(last_response.redirect?).to eq(true)
      follow_redirect!

      expect(last_request.path).to eq("/")
      expect(last_response.body).to include("Falcon")
    end
  end

  it "displays form if terms and conditions aren't agreed to" do
    form_hash = {
      :product_name => "Falcon",
      :product_price => 1200,
      :product_picture => "https://s-media-cache-ak0.pinimg.com/originals/0b/6f/d1/0b6fd19afbc91612cb837765f982d6a2.jpg",
    }

    post "/add_product", form_hash
    expect(last_response.body).to include("You need to agree to the terms.")
  end
end
