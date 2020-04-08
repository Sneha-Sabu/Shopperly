require 'rails_helper'

RSpec.describe "order/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      name: "MyString",
      address: "MyText",
      email: "MyString",
      pay_type: 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", order_index_path, "post" do

      assert_select "input[name=?]", "order[name]"

      assert_select "textarea[name=?]", "order[address]"

      assert_select "input[name=?]", "order[email]"

      assert_select "input[name=?]", "order[pay_type]"
    end
  end
end
