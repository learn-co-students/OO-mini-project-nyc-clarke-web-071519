require_relative '../config/environment.rb'

varun = User.new('Varun')
valentino = User.new('Valentino')
tony = User.new('Tony')

omlette = Recipe.new('Omlette')
mashed_potatoes = Recipe.new('Mashed potatoes')
pancakes = Recipe.new('Pancakes')
waffles = Recipe.new('Waffles')
oatmeal = Recipe.new('Oatmeal')
cereal = Recipe.new('Cereal')


varun.add_recipe_card(omlette, '2003-01-02', 5)
valentino.add_recipe_card(mashed_potatoes, '2007-06-05', 4)
varun.add_recipe_card(pancakes, '2002-02-02', 3)
varun.add_recipe_card(mashed_potatoes, '2000-09-08', 4)
varun.add_recipe_card(waffles, '2009-09-08', 5)
varun.add_recipe_card(oatmeal, '2007-06-05', 4)

eggs = Ingredient.new('Eggs')
butter = Ingredient.new('Butter')
potatoes = Ingredient.new('Potatoes')
flour = Ingredient.new('Flour')
peppers = Ingredient.new('Peppers')
mushrooms = Ingredient.new('Mushrooms')

recipe_ingredient1 = RecipeIngredient.new(omlette, eggs)
recipe_ingredient2 = RecipeIngredient.new(mashed_potatoes, potatoes)
recipe_ingredient3 = RecipeIngredient.new(mashed_potatoes, butter)
recipe_ingredient4 = RecipeIngredient.new(pancakes, flour)
recipe_ingredient5 = RecipeIngredient.new(pancakes, butter)

allergy1 = Allergy.new(varun, potatoes)
allergy2 = Allergy.new(valentino, flour)
allergy3 = Allergy.new(tony, flour)






binding.pry