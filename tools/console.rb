require_relative '../config/environment.rb'
require 'pry'

user1 = User.new('andrew')
user2 = User.new('jason')

recipe2 = Recipe.new("chicken_pot_pie")
recipe3 = Recipe.new("chicken_stew")
recipe4 = Recipe.new("pizza")
recipe5 = Recipe.new("burgers")
recipe6 = Recipe.new("pasta")

rc1 = RecipeCard.new(user1, "1/1/19", 10, recipe2)
rc2 = RecipeCard.new(user1, "1/5/19", 8, recipe4)
rc3 = RecipeCard.new(user1, "1/5/19", 5, recipe3)
rc4 = RecipeCard.new(user1, "1/5/19", 7, recipe5)
rc5 = RecipeCard.new(user2, "1/10/19", 6, recipe5)
rc6 = RecipeCard.new(user2, "1/15/19", 4, recipe2)

ingredient1 = Ingredient.new("chicken")
ingredient2 = Ingredient.new("peas")
ingredient3 = Ingredient.new("potatoes")
ingredient4 = Ingredient.new("carrots")
ingredient5 = Ingredient.new("mushrooms")
ingredient6 = Ingredient.new("peanuts")
ingredient7 = Ingredient.new("bread")
ingredient8 = Ingredient.new("cheese")
ingredient9 = Ingredient.new("sauce")
ingredient10 = Ingredient.new("meat")
ingredient11 = Ingredient.new("lettuce")
ingredient12 = Ingredient.new("tomato")
ingredient13 = Ingredient.new("noodles")


user1.declare_allergy(ingredient2)
user1.declare_allergy(ingredient3)
user1.declare_allergy(ingredient5)
user1.declare_allergy(ingredient1)
user2.declare_allergy(ingredient6)
user2.declare_allergy(ingredient5)

ri1 = RecipeIngredient.new(ingredient1, recipe2)
ri2 = RecipeIngredient.new(ingredient2, recipe2)
ri3 = RecipeIngredient.new(ingredient3, recipe2)


binding.pry
puts 'hi'