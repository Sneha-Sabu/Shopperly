class RemoveNullFromLineItem < ActiveRecord::Migration[6.0]
  def up
  change_column_null :line_item, :cart_id, true
  end

def down
  change_column_null :line_item, :cart_id, false
end
end
