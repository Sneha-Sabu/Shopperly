require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    get '/users/sign_in'
    sign_in users(:users_001)
    post users_session_url
  
  end  
  setup do
    @products = products(:one)
    @update = {
    name: 'Lorem Ipsum',
    description: 'Wibbles are fun!',
    image: 'lorem.jpg',
    price: 19.95,
    brand: 'xyz',
    categories_id: '1'
  }
  end

  test "should get index" do
    get products_index_url
    assert_response :success
  end



  test "should show products" do
    get products_url(@products)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_url(@products)
    assert_response :success
  end



end
