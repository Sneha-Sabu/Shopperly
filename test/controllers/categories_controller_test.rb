require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories = categories(:one)
  end

  test "should get index" do
    get categories_index_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_url
    assert_response :success
  end

  test "should create categories" do
    assert_difference('Categories.count') do
      post categories_index_url, params: { categories: { name: @categories.name } }
    end

    assert_redirected_to categories_url(Categories.last)
  end

  test "should show categories" do
    get categories_url(@categories)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_url(@categories)
    assert_response :success
  end

  test "should update categories" do
    patch categories_url(@categories), params: { categories: { name: @categories.name } }
    assert_redirected_to categories_url(@categories)
  end

  test "should destroy categories" do
    assert_difference('Categories.count', -1) do
      delete categories_url(@categories)
    end

    assert_redirected_to categories_index_url
  end
end
