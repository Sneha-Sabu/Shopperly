require 'rails_helper'

RSpec.describe "LineItem", type: :request do
  describe "GET /line_item" do
    it "works! (now write some real specs)" do
      get line_item_index_path
      expect(response).to have_http_status(200)
    end
  end
end
