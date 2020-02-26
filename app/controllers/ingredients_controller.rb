class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
        hash = Ingredient.most_allergies
        @ingredients = hash.sort_by{ |k,v| v }.reverse
        # byebug
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    private

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end

end
