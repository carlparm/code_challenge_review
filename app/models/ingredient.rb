class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :users, through: :allergies
    has_many :ingredientrecipes
    has_many :recipes, through: :ingredientrecipes
end
