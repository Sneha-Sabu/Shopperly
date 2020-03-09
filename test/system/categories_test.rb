require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @categories = categories(:one)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "Categories"
  end

  test "creating a Categories" do
    visit categories_url
    click_on "New Categories"

    fill_in "Name", with: @categories.name
    click_on "Create Categories"

    assert_text "Categories was successfully created"
    click_on "Back"
  end

  test "updating a Categories" do
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @categories.name
    click_on "Update Categories"

    assert_text "Categories was successfully updated"
    click_on "Back"
  end

  test "destroying a Categories" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categories was successfully destroyed"
  end
end
