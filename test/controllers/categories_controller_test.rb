require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
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
