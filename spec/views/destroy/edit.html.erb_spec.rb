require 'rails_helper'

RSpec.describe "destroy/edit", type: :view do
  before(:each) do
    @destroy = assign(:destroy, Destroy.create!(
      controller_name: "MyString"
    ))
  end

  it "renders the edit destroy form" do
    render

    assert_select "form[action=?][method=?]", destroy_path(@destroy), "post" do

      assert_select "input[name=?]", "destroy[controller_name]"
    end
  end
end
