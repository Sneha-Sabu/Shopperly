class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :products, optional: true
  belongs_to :cart

  def total_price
    products.price.to_i * quantity.to_i
  end
end
