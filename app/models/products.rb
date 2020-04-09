class Products < ApplicationRecord
has_many :line_item  
before_destroy :not_referenced_by_any_line_item
validates :name, :description, :image, :price, :brand, :categories_id, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}

  
  include RailsAdminCharts
  belongs_to :categories
    has_many :line_item
    
  private

   def not_referenced_by_any_line_item
    unless line_item.empty?
      errors.add(:base, 'Line items present')
      throw :abort
    end
   end  
  def self.search(term)
    if term
      where('lower(name) LIKE ?',"%#{term.downcase}%")
    else
      all
    end
  end
end
