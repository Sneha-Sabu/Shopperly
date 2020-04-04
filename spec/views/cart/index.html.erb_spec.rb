require 'rails_helper'

RSpec.describe "cart/index", type: :view do
  before(:each) do
    assign(:cart, [
      Cart.create!(),
      Cart.create!()
    ])
  end

  it "renders a list of cart" do
    render
  end
end
