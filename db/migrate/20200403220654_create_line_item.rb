class CreateLineItem < ActiveRecord::Migration[6.0]
  def change
    create_table :line_item do |t|
      t.references :products, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
