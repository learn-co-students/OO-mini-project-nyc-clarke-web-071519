class Recipe
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    #     - `Recipe.all`
    # should return all of the recipe instances

    def self.all
        @@all
    end

    # - `Recipe.most_popular`
    # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)

    def self.most_popular
        Recipe.all.max_by {|recipe| recipe.users.length}
    end


    # - `Recipe#users`
    # should return the user instances who have recipe cards with this recipe

    def recipe_cards
        RecipeCard.all.select {|recipe_card| recipe_card.recipe == self}
    end

    def users
        recipe_cards.map {|recipe_card| recipe_card.user}
    end

    # - `Recipe#ingredients`
    # should return all of the ingredients in this recipe
    def recipe_ingredients
        RecipeIngredient.all.select {|recipe_ingredient| recipe_ingredient.recipe == self}
    end

    def ingredients 
        recipe_ingredients.map {|recipe_ingredient| recipe_ingredient.ingredient}
    end

    # - `Recipe#add_ingredients`
    # should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

    def add_ingredients(ingredient_arr)
        ingredient_arr.each do |ingredient|
            RecipeIngredient.new(self, ingredient)
        end
    end
    # - `Recipe#allergens`
    # should return all of the `Ingredient`s in this recipe that are allergens for `User`s in our system.

    def allergens
        ingredients.select {|ingredient| ingredient.allergies.length > 0}
    end
end