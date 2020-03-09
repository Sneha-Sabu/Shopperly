class Products < ApplicationRecord
  belongs_to :categories
  
  def self.search(term)
    if term
      where('name LIKE ?',"%#{term}%")
    else
      all
    end
  end
end
