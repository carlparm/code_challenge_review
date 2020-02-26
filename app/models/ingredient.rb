class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :users, through: :allergies
    has_many :ingredientrecipes
    has_many :recipes, through: :ingredientrecipes

    def self.most_allergies
        hash = {}

        self.all.each do |ing|
            hash[ing.name] = ing.allergies.count
        end
        hash
    end
end
