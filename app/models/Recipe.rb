class Recipe

    attr_accessor :name

    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def self.all
    @@all
    end

    def self.most_popular
   # RecipeCard.all.max_by {|card| card.recipe.name }
    recipe_counter = {}
    RecipeCard.all.each do |card|
      if recipe_counter[card.recipe.name]
        recipe_counter[card.recipe.name] += 1
      else 
        recipe_counter[card.recipe.name] = 1
      end
    end
    recipe_counter.max_by {|key, value| value}.shift
    end

    def users
       array = RecipeCard.all.select {|card| card.recipe == self}
       array.map {|recipe_cards| recipe_cards.user.name}
    end

    def add_ingredients(ingredients)
        ingredients.each do |ingredient|
            RecipeIngredient.new(ingredient, self)
        end
    end

    def ingredients
        RecipeIngredient.all.select{|ingredients| ingredients.recipe == self} 
    end

    def allergens
    Ingredient.all
    end 

end