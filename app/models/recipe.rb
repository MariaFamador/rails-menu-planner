class Recipe < ApplicationRecord
  CATEGORIES = %w[beef chicken fish pork shrimp vegetables]

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, allow_destroy: true
  
  belongs_to :menu, optional: true
end
