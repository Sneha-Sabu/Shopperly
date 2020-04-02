class Products < ApplicationRecord
validates :name, :description, :image, :price, :brand, :categories_id, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :image, allow_blank: true, format: {
with: %r{\.(gif|jpg|png)\Z}i,
message: 'must be a URL for GIF, JPG or PNG image.'
}
  
  include RailsAdminCharts
  belongs_to :categories
  
  def self.search(term)
    if term
      where('lower(name) LIKE ?',"%#{term.downcase}%")
    else
      all
    end
  end
end
