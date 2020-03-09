require 'test_helper'

class ShopperlyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopperly_index_url
    assert_response :success
  end

end
