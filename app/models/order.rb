class Order < ApplicationRecord
<<<<<<< HEAD
belongs_to :countries
validates :name, :address, :countries_id, :email, :pay_type, presence: true


enum pay_type: {
"Check" => 0,
"Credit card" => 1,
"Purchase order" => 2
}

=======
    enum pay_type: {
    "Check"           => 0,
    "Credit card"     => 1,
    "Purchase order"  => 2
  }
>>>>>>> 69c19b6b0a88b6effe23375305380a03f5994cab
end
