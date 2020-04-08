class Order < ApplicationRecord
belongs_to :countries
validates :name, :address, :countries_id, :email, :pay_type, presence: true


enum pay_type: {
"Check" => 0,
"Credit card" => 1,
"Purchase order" => 2
}

end
