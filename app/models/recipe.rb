class Recipe < ApplicationRecord
  CATEGORIES = %w[beef chicken fish pork shrimp vegetables]

  has_many :ingredients
  belongs_to :menu
end
