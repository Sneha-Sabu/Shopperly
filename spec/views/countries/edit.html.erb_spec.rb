require 'rails_helper'

RSpec.describe "countries/edit", type: :view do
  before(:each) do
    @countries = assign(:countries, Countries.create!(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders the edit countries form" do
    render

    assert_select "form[action=?][method=?]", countries_path(@countries), "post" do

      assert_select "input[name=?]", "countries[name]"

      assert_select "input[name=?]", "countries[latitude]"

      assert_select "input[name=?]", "countries[longitude]"
    end
  end
end
