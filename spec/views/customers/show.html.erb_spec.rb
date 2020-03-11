require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customers = assign(:customers, Customers.create!(
      :name => "Name",
      :email => "Email",
      :password_digest => "Password Digest",
      :address => "Address",
      :countries => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(//)
  end
end
