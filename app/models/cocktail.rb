class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end

# MissingAttributeError in the db (both ingredient_id and cocktail_id)
