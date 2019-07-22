class User 
  
  attr_reader :name 
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def user_recidecards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end
  
  
  def recipes
    user_recidecards.map do |n|
      n.recipe
    end
  end
    
  
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end
  
  def declare_allergy(ingredients)
    Allergy.new(self, ingredients)
     end
  
  def user_allergies
    Allergy.all.select { |allergy|
      allergy.user == self }
 end
  
  
  def allergens
    user_allergies.map { |allergy|
    allergy.ingredients }
end

def top_three_recipes
    top_recipes = RecipeCard.all.sort{|x, y| x.rating - y.rating}
    top_recipes.last(3)
end



def most_recent_recipe
  date_added  = RecipeCard.all.select { |date| date }
  date_added.last
  
end
  

  
  
  
  
  
end