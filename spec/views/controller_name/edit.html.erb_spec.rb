require 'rails_helper'

RSpec.describe "controller_name/edit", type: :view do
  before(:each) do
    @controller_name = assign(:controller_name, ControllerName.create!())
  end

  it "renders the edit controller_name form" do
    render

    assert_select "form[action=?][method=?]", controller_name_path(@controller_name), "post" do
    end
  end
end
