class CreateOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :order do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :pay_type

      t.timestamps
    end
  end
end
