class Users < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :zxcvbnable

  # Optionally add more weak words to check against:
  def weak_words
    [self.name, self.email]
  end       
end
