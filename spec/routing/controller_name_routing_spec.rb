require "rails_helper"

RSpec.describe ControllerNameController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/controller_name").to route_to("controller_name#index")
    end

    it "routes to #new" do
      expect(get: "/controller_name/new").to route_to("controller_name#new")
    end

    it "routes to #show" do
      expect(get: "/controller_name/1").to route_to("controller_name#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/controller_name/1/edit").to route_to("controller_name#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/controller_name").to route_to("controller_name#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/controller_name/1").to route_to("controller_name#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/controller_name/1").to route_to("controller_name#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/controller_name/1").to route_to("controller_name#destroy", id: "1")
    end
  end
end
