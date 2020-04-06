require 'rails_helper'

RSpec.describe "controller_name/new", type: :view do
  before(:each) do
    assign(:controller_name, ControllerName.new())
  end

  it "renders new controller_name form" do
    render

    assert_select "form[action=?][method=?]", controller_name_index_path, "post" do
    end
  end
end
