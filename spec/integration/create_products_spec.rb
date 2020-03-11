require 'spec_helper'
require 'rails_helper'

feature 'create products' do
scenario "can create products" do
visit'/products/new'
expect(page).to have_content('New Products')

fill_in 'Name', :with=>'Alisha'
fill_in 'Description', :with=> 'test'
fill_in 'Brand', :with=>'Alisha'
click_button 'Create Products'

end
end

