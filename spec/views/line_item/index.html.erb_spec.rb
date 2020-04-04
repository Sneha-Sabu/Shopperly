require 'rails_helper'

RSpec.describe "line_item/index", type: :view do
  before(:each) do
    assign(:line_item, [
      LineItem.create!(
        :products => nil,
        :cart => nil
      ),
      LineItem.create!(
        :products => nil,
        :cart => nil
      )
    ])
  end

  it "renders a list of line_item" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
