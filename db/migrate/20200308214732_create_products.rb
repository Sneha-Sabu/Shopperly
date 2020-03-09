class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :price
      t.string :brand
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
