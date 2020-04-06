require "rails_helper"

RSpec.describe DestroyController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/destroy").to route_to("destroy#index")
    end

    it "routes to #new" do
      expect(get: "/destroy/new").to route_to("destroy#new")
    end

    it "routes to #show" do
      expect(get: "/destroy/1").to route_to("destroy#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/destroy/1/edit").to route_to("destroy#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/destroy").to route_to("destroy#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/destroy/1").to route_to("destroy#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/destroy/1").to route_to("destroy#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/destroy/1").to route_to("destroy#destroy", id: "1")
    end
  end
end
