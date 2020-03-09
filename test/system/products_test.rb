require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @products = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Products" do
    visit products_url
    click_on "New Products"

    fill_in "Brand", with: @products.brand
    fill_in "Categories", with: @products.categories_id
    fill_in "Description", with: @products.description
    fill_in "Image", with: @products.image
    fill_in "Name", with: @products.name
    fill_in "Price", with: @products.price
    click_on "Create Products"

    assert_text "Products was successfully created"
    click_on "Back"
  end

  test "updating a Products" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @products.brand
    fill_in "Categories", with: @products.categories_id
    fill_in "Description", with: @products.description
    fill_in "Image", with: @products.image
    fill_in "Name", with: @products.name
    fill_in "Price", with: @products.price
    click_on "Update Products"

    assert_text "Products was successfully updated"
    click_on "Back"
  end

  test "destroying a Products" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Products was successfully destroyed"
  end
end
