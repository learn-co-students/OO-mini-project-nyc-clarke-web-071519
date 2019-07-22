class RecipeIngredient 
     @@all = []
    attr_accessor :recipe, :ingredients
    def initialize(recipe, ingredients)
        @recipe = recipe
        @ingredients = ingredients

        @@all << self 
    end 

    def self.all
        @@all
    end 
end 