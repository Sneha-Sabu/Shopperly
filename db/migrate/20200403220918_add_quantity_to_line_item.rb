class AddQuantityToLineItem < ActiveRecord::Migration[6.0]
  def change
    add_column :line_item, :quantity, :integer, default: 1
  end
end
