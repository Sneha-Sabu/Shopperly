class AddOrderToLineItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_item, :order, foreign_key: true
    add_reference :line_item, :countries,  foreign_key: true
  end
end
