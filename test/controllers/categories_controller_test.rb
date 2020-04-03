require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories = categories(:one)
  end

  test "should get index" do
    get categories_index_url
    assert_response :success
  end


 

  test "should show categories" do
    get categories_url(@categories)
    assert_response :success
  end




end
