require 'rails_helper'

RSpec.describe "Cart", type: :request do
  describe "GET /cart" do
    it "works! (now write some real specs)" do
      get cart_index_path
      expect(response).to have_http_status(200)
    end
  end
end
