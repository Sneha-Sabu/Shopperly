require 'rails_helper'

RSpec.describe "line_item/show", type: :view do
  before(:each) do
    @line_item = assign(:line_item, LineItem.create!(
      :products => nil,
      :cart => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
