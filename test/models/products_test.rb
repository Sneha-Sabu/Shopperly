require 'test_helper'

class ProductsTest < ActiveSupport::TestCase
  fixtures :products
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
  product = Products.new
  assert product.invalid?
  assert product.errors[:name].any?
  assert product.errors[:description].any?
  assert product.errors[:image].any?
  assert product.errors[:price].any?
  assert product.errors[:brand].any?
  assert product.errors[:categories_id].any?
  
  end

end
