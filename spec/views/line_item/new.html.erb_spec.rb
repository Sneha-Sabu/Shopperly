require 'rails_helper'

RSpec.describe "line_item/new", type: :view do
  before(:each) do
    assign(:line_item, LineItem.new(
      :products => nil,
      :cart => nil
    ))
  end

  it "renders new line_item form" do
    render

    assert_select "form[action=?][method=?]", line_item_index_path, "post" do

      assert_select "input[name=?]", "line_item[products_id]"

      assert_select "input[name=?]", "line_item[cart_id]"
    end
  end
end
