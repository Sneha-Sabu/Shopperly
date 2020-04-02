require 'test_helper'

class CategoriesTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
  product = Categories.new
  assert product.invalid?
  assert product.errors[:name].any?
  
  end
end
