require 'rails_helper'

RSpec.describe "order/index", type: :view do
  before(:each) do
    assign(:order, [
      Order.create!(
        name: "Name",
        address: "MyText",
        email: "Email",
        pay_type: 2
      ),
      Order.create!(
        name: "Name",
        address: "MyText",
        email: "Email",
        pay_type: 2
      )
    ])
  end

  it "renders a list of order" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
