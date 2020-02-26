class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def search
        @recipes = Recipe.all
        @search_result = @recipes.select do |recipe|
            recipe.ingredients.count == params[:q].to_i
        end
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
        @ingredients = Ingredient.all
    end

    def create
        byebug
        @recipe = Recipe.create(recipe_params)
    end

    private
    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end





end
