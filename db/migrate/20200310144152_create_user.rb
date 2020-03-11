class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :user do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :user, :email, unique: true

  end
end
