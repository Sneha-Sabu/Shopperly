require 'rails_helper'

RSpec.describe "cart/new", type: :view do
  before(:each) do
    assign(:cart, Cart.new())
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", cart_index_path, "post" do
    end
  end
end
