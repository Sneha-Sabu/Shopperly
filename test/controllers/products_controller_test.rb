require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products = products(:one)
  end

  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get new" do
    get new_products_url
    assert_response :success
  end

  test "should create products" do
    assert_difference('Products.count') do
      post products_index_url, params: { products: { brand: @products.brand, categories_id: @products.categories_id, description: @products.description, image: @products.image, name: @products.name, price: @products.price } }
    end

    assert_redirected_to products_url(Products.last)
  end

  test "should show products" do
    get products_url(@products)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_url(@products)
    assert_response :success
  end

  test "should update products" do
    patch products_url(@products), params: { products: { brand: @products.brand, categories_id: @products.categories_id, description: @products.description, image: @products.image, name: @products.name, price: @products.price } }
    assert_redirected_to products_url(@products)
  end

  test "should destroy products" do
    assert_difference('Products.count', -1) do
      delete products_url(@products)
    end

    assert_redirected_to products_index_url
  end
end
