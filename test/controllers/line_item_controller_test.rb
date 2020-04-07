require 'test_helper'
class LineItemControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
  
  setup do
    @line_item = line_item(:one)
  end

  





  test "should update line_item" do
    patch line_item_url(@line_item), params: { line_item: { products_id: @line_item.products_id } }
    assert_redirected_to line_item_url(@line_item)
  end


end