require 'rails_helper'

RSpec.describe "destroy/new", type: :view do
  before(:each) do
    assign(:destroy, Destroy.new(
      controller_name: "MyString"
    ))
  end

  it "renders new destroy form" do
    render

    assert_select "form[action=?][method=?]", destroy_index_path, "post" do

      assert_select "input[name=?]", "destroy[controller_name]"
    end
  end
end
