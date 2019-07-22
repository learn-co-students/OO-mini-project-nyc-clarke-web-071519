require_relative '../config/environment.rb'




aj = User.new("AJ")
alyssa = User.new("Alyssa")

joe = User.new("Joe")

cookie_recipe = Recipe.new("cookie_recipe")
cake_recipe = Recipe.new("cake_recipe")
brownie_recipe = Recipe.new("brownie_recipe")

aj_cookie = RecipeCard.new(aj, cookie_recipe, "6/24/2017", 4.4)
alyssa_cake = RecipeCard.new(alyssa, cake_recipe, "3/12/2019" , 3.8)
alyssa_cookie = RecipeCard.new(alyssa, cookie_recipe, "3/12/2019" , 3.8)

joe_brownie = RecipeCard.new(joe, brownie_recipe, "3/12/2019" , 3.8)

joe_cookie = RecipeCard.new(joe, cookie_recipe, "2/1/2011", 4.5)
cookie_ingredient = Ingredient.new("flour, eggs, chocolate, sugar")
cake_ingredient = Ingredient.new("flour, eggs, icing, baking powder, love")
brownie_ingredient = Ingredient.new("water")

cake_allergy = Allergy.new(aj, cake_ingredient)
cookie_allergy = Allergy.new(alyssa, cookie_ingredient)
cookie_allergy = Allergy.new(aj, cookie_ingredient)
cookie_allergy = Allergy.new(joe, cookie_ingredient)


cookie_recipe_ingredient = RecipeIngredient.new(cookie_recipe, cookie_ingredient)

cake_recipe_ingredient = RecipeIngredient.new(cake_recipe,cake_ingredient)

cookie_recipe.add_ingredients("sprinkles")

binding.pry

