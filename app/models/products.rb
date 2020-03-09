class Products < ApplicationRecord
  belongs_to :categories
  
  def self.search(term)
    if term
      where('lower(name) LIKE ?',"%#{term.downcase}%")
    else
      all
    end
  end
end
