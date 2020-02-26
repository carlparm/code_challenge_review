class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ingredientrecipes
    has_many :ingredients, through: :ingredientrecipes
end
