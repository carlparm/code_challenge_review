# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Ingredientrecipe.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
Allergy.destroy_all

carl = User.create(name: "Carl")
bri = User.create(name: "Bri")
matteo = User.create(name: "Matteo")

corn = Ingredient.create(name: "Corn")
sugar = Ingredient.create(name: "Sugar")
flour = Ingredient.create(name: "Flour")
chicken = Ingredient.create(name: "Chicken")
cheese = Ingredient.create(name: "Cheese")

chili = Recipe.create(user_id: carl.id, name: "Chili")
cornbread = Recipe.create(user_id: bri.id, name: "Corn Bread")
cake = Recipe.create(user_id: matteo.id, name: "Cake")

chili1 = Ingredientrecipe.create(recipe_id: chili.id, ingredient_id: chicken.id)
chili2 = Ingredientrecipe.create(recipe_id: chili.id, ingredient_id: cheese.id)
chili3 = Ingredientrecipe.create(recipe_id: chili.id, ingredient_id: corn.id)
cornbread1 = Ingredientrecipe.create(recipe_id: cornbread.id, ingredient_id: corn.id)
cornbread2 = Ingredientrecipe.create(recipe_id: cornbread.id, ingredient_id: flour.id)
cornbread3 = Ingredientrecipe.create(recipe_id: cornbread.id, ingredient_id: sugar.id)
cake1 = Ingredientrecipe.create(recipe_id: cake.id, ingredient_id: flour.id)
cake2 = Ingredientrecipe.create(recipe_id: cake.id, ingredient_id: cheese.id)
cake3 = Ingredientrecipe.create(recipe_id: cake.id, ingredient_id: sugar.id)

allergy1 = Allergy.create(ingredient_id: sugar.id, user_id: carl.id)
allergy2 = Allergy.create(ingredient_id: cheese.id, user_id: bri.id)
allergy3 = Allergy.create(ingredient_id: chicken.id, user_id: matteo.id)
allergy4 = Allergy.create(ingredient_id: corn.id, user_id: matteo.id)


