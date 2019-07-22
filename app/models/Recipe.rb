class Recipe
  
  attr_reader :name
  @@all =[ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.recipe_cards_length
  Recipe.all.map { |recipe| recipe.recipe_recipecards.length}
  end 
  
  def self.most_popular_sorted
    recipe_cards_length.sort
end

def self.most_popular
most_popular_sorted.pop
end

def user_length
  users.length
end

def users
   recipe_recipecards.map { |recipe_card|
      recipe_card.user}
    end
  
  
  def recipe_recipecards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end


  def thisrecipe_recipe_ingredients
    RecipeIngredient.all.select do |recipeing|
      recipeing.recipe == self
    end
  end

def ingredients
  thisrecipe_recipe_ingredients.map do |n|
    n.ingredient
  end
end
  
  
  def this_recipe_ingredients
    thisrecipe_recipe_ingredients.map { |x| x.ingredient}
    
  end

def recipe_allergens
   this_recipe_ingredients.all.select { |ingredients| ingredient.allergy}
 
end

def allergens
  recipe_allergens.map { |allergens| allergens.ingredients}
end

def add_ingredients(ingredients)
 
 self.ingredients << ingredients

  


end




end 

  
  
  
  
  
  
  
  
  
  
