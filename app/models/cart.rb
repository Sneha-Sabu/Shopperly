class Cart < ApplicationRecord
    has_many :line_item, dependent: :destroy

  def add_products(products)
    current_item = line_item.find_by(products_id: products.id)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_item.build(products_id: products.id)
    end
    current_item
  end

  def total_price
    line_item.to_a.sum { |item| item.total_price }
  end
end
