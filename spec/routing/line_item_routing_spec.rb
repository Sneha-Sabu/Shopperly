require "rails_helper"

RSpec.describe LineItemController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/line_item").to route_to("line_item#index")
    end

    it "routes to #new" do
      expect(:get => "/line_item/new").to route_to("line_item#new")
    end

    it "routes to #show" do
      expect(:get => "/line_item/1").to route_to("line_item#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/line_item/1/edit").to route_to("line_item#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/line_item").to route_to("line_item#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/line_item/1").to route_to("line_item#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/line_item/1").to route_to("line_item#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/line_item/1").to route_to("line_item#destroy", :id => "1")
    end
  end
end
