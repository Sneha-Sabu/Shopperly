require 'test_helper'
class LineItemsControllerTest < ActionDispatch::IntegrationTest
 include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
  setup do
    @line_item = line_item(:one)
  end

  

  test "should get new" do
    get new_line_item_url
    assert_response :success
  end



  test "should show line_item" do
    get line_item_url(@line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_item_url(@line_item)
    assert_response :success
  end

  test "should update line_item" do
    patch line_item_url(@line_item), params: { line_item: { products_id: @line_item.products_id } }
    assert_response :success
  end


end