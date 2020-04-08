require 'test_helper'

class OrderControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
  
  test "requires item in cart" do
  get new_order_url
  assert_redirected_to shopperly_index_path
  assert_equal flash[:notice], 'Your cart is empty'
  end
  
end
