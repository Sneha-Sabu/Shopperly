require 'rails_helper'

RSpec.describe "countries/show", type: :view do
  before(:each) do
    @countries = assign(:countries, Countries.create!(
      :name => "Name",
      :latitude => "9.99",
      :longitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
