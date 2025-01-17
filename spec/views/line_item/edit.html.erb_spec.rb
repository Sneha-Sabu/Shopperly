require 'rails_helper'

RSpec.describe "line_item/edit", type: :view do
  before(:each) do
    @line_item = assign(:line_item, LineItem.create!(
      :products => nil,
      :cart => nil
    ))
  end

  it "renders the edit line_item form" do
    render

    assert_select "form[action=?][method=?]", line_item_path(@line_item), "post" do

      assert_select "input[name=?]", "line_item[products_id]"

      assert_select "input[name=?]", "line_item[cart_id]"
    end
  end
end
