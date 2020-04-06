require 'rails_helper'

RSpec.describe "controller_name/show", type: :view do
  before(:each) do
    @controller_name = assign(:controller_name, ControllerName.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
