class RemoveNullFromProductsLineItem < ActiveRecord::Migration[6.0]
def up
  change_column_null :line_item, :products_id, true
end

def down
  change_column_null :line_item, :products_id, false
end
end
