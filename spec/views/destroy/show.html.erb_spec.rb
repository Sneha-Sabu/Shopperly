require 'rails_helper'

RSpec.describe "destroy/show", type: :view do
  before(:each) do
    @destroy = assign(:destroy, Destroy.create!(
      controller_name: "Controller Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Controller Name/)
  end
end
