class Order < ApplicationRecord
belongs_to :countries
has_many :line_item, dependent: :destroy
validates :name, :address, :countries_id, :email, :pay_type, presence: true


enum pay_type: {
"Check" => 0,
"Credit card" => 1,
"Purchase order" => 2
}

def add_line_item_from_cart(cart)
   cart.line_item.each do |item|
   item.cart_id = nil
   line_item << item
   end
end

end
