require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customers = assign(:customers, Customers.create!(
      :name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :address => "MyString",
      :countries => nil
    ))
  end

  it "renders the edit customers form" do
    render

    assert_select "form[action=?][method=?]", customers_path(@customers), "post" do

      assert_select "input[name=?]", "customers[name]"

      assert_select "input[name=?]", "customers[email]"

      assert_select "input[name=?]", "customers[password_digest]"

      assert_select "input[name=?]", "customers[address]"

      assert_select "input[name=?]", "customers[countries_id]"
    end
  end
end
