require "rails_helper"

RSpec.describe UserBeersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_beers").to route_to("user_beers#index")
    end

    it "routes to #new" do
      expect(:get => "/user_beers/new").to route_to("user_beers#new")
    end

    it "routes to #show" do
      expect(:get => "/user_beers/1").to route_to("user_beers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_beers/1/edit").to route_to("user_beers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_beers").to route_to("user_beers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_beers/1").to route_to("user_beers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_beers/1").to route_to("user_beers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_beers/1").to route_to("user_beers#destroy", :id => "1")
    end

  end
end
