class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.references :countries, null: false, foreign_key: true

      t.timestamps
    end
    add_index :customers, :email, unique: true

  end
end
