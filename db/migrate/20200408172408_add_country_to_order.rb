class AddCountryToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :order, :countries, foreign_key: true
  end
end
