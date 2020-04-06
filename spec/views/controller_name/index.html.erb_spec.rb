require 'rails_helper'

RSpec.describe "controller_name/index", type: :view do
  before(:each) do
    assign(:controller_name, [
      ControllerName.create!(),
      ControllerName.create!()
    ])
  end

  it "renders a list of controller_name" do
    render
  end
end
