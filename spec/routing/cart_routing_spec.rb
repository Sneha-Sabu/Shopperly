require "rails_helper"

RSpec.describe CartController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cart").to route_to("cart#index")
    end

    it "routes to #new" do
      expect(:get => "/cart/new").to route_to("cart#new")
    end

    it "routes to #show" do
      expect(:get => "/cart/1").to route_to("cart#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cart/1/edit").to route_to("cart#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cart").to route_to("cart#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cart/1").to route_to("cart#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cart/1").to route_to("cart#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cart/1").to route_to("cart#destroy", :id => "1")
    end
  end
end
