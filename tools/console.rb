require_relative '../config/environment.rb'

user1 = User.new("user1")
user2 = User.new("user2")

ingredient1 = Ingredient.new("ing1")
ingredient2 = Ingredient.new("ing2")

allergy1 = Allergy.new(user1, ingredient2)
allergy2 = Allergy.new(user1, ingredient2)

recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")


rcard1 = RecipeCard.new(user1, recipe1, "_12-22-09_", 5)
rcard2 = RecipeCard.new(user1, recipe2, "_95-20-02_", 3)
rcard3 = RecipeCard.new(user1, recipe3, "_45-92-09_", 2)
rcard4 = RecipeCard.new(user1, recipe1, "_35-12-49_", 1)
rcard5 = RecipeCard.new(user1, recipe4, "_25-02-29_", 1)

ringredient1 = RecipeIngredient.new(recipe1, ingredient1)
ringredient2 = RecipeIngredient.new(recipe2, ingredient2)

binding.pry
