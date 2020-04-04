class CombineItemInCart < ActiveRecord::Migration[6.0]
  def up
    Cart.all.each do |cart|
      sums = cart.line_item.group(:products_id).sum(:quantity)
      sums.each do |products_id, quantity|
        if quantity > 1
          cart.line_item.where(products_id: products_id).delete_all

          item = cart.line_item.build(products_id: products_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    #split items with a quantity of 1 or more into multiple items
    LineItem.where("quantity>1").each do |line_item|
      line_item.quantity.times do
        LineItem.create(
          cart_id: line_item.cart_id,
          products_id: line_item.products_id,
          quantity: 1
        )
      end
      # remove original line item
      line_item.destroy
    end
  end
end
