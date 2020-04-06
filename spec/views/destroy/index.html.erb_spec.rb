require 'rails_helper'

RSpec.describe "destroy/index", type: :view do
  before(:each) do
    assign(:destroy, [
      Destroy.create!(
        controller_name: "Controller Name"
      ),
      Destroy.create!(
        controller_name: "Controller Name"
      )
    ])
  end

  it "renders a list of destroy" do
    render
    assert_select "tr>td", text: "Controller Name".to_s, count: 2
  end
end
