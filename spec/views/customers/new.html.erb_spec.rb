require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customers, Customers.new(
      :name => "MyString",
      :email => "MyString",
      :password_digest => "MyString",
      :address => "MyString",
      :countries => nil
    ))
  end

  it "renders new customers form" do
    render

    assert_select "form[action=?][method=?]", customers_index_path, "post" do

      assert_select "input[name=?]", "customers[name]"

      assert_select "input[name=?]", "customers[email]"

      assert_select "input[name=?]", "customers[password_digest]"

      assert_select "input[name=?]", "customers[address]"

      assert_select "input[name=?]", "customers[countries_id]"
    end
  end
end
