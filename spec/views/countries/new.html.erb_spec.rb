require 'rails_helper'

RSpec.describe "countries/new", type: :view do
  before(:each) do
    assign(:countries, Countries.new(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders new countries form" do
    render

    assert_select "form[action=?][method=?]", countries_index_path, "post" do

      assert_select "input[name=?]", "countries[name]"

      assert_select "input[name=?]", "countries[latitude]"

      assert_select "input[name=?]", "countries[longitude]"
    end
  end
end
