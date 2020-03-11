require 'rails_helper'

RSpec.describe "countries/index", type: :view do
  before(:each) do
    assign(:countries, [
      Countries.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99"
      ),
      Countries.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99"
      )
    ])
  end

  it "renders a list of countries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
