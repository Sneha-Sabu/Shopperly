require "rails_helper"

RSpec.describe OrderController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/order").to route_to("order#index")
    end

    it "routes to #new" do
      expect(get: "/order/new").to route_to("order#new")
    end

    it "routes to #show" do
      expect(get: "/order/1").to route_to("order#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/order/1/edit").to route_to("order#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/order").to route_to("order#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/order/1").to route_to("order#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/order/1").to route_to("order#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/order/1").to route_to("order#destroy", id: "1")
    end
  end
end
