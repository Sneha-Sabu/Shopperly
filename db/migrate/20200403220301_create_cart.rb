class CreateCart < ActiveRecord::Migration[6.0]
  def change
    create_table :cart do |t|

      t.timestamps
    end
  end
end
