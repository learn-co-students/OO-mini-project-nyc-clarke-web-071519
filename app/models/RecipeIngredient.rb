class RecipeIngredient
    @@all = []
    # - `RecipeIngredient#ingredient`
    # should return the ingredient instance
    # - `RecipeIngredient#recipe`
    # should return the recipe instance
    attr_accessor :recipe, :ingredient
    def initialize(recipe,ingredient)
        @recipe = recipe
        @ingredient = ingredient
        @@all << self
    end
    # - `RecipeIngredient.all`
    # should return all of the RecipeIngredient instances
    def self.all
        @@all 
    end

end
