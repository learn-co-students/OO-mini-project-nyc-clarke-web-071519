class User
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    # - `User.all`
    # should return all of the user instances
    def self.all
        @@all
    end


    # - `User#recipes`
    # should return all of the recipes this user has recipe cards for
    def recipe_cards
        RecipeCard.all.select {|recipe_card| recipe_card.user == self }
    end

    def recipes
        recipe_cards.map {|recipe_card| recipe_card.recipe}
    end

    # - `User#add_recipe_card`
    # should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card(recipe, date, rating)
        new_card = RecipeCard.new(self, recipe)
        new_card.date = date
        new_card.rating = rating
        new_card
    end
    # - `User#declare_allergy`
    # should accept an`Ingredient` instance as an argument, and create a new `Allergy` instance for this `User` and the given `Ingredient`
    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end
    # - `User#allergens`
    # should return all of the ingredients this user is allergic to
    def allergens
        Allergy.all.select {|allergy| allergy.user == self}
    end

    # - `User#top_three_recipes`
    # should return the top three highest rated recipes for this user.
    def top_three_recipes
        smallest_to_largest_rating_cards = recipe_cards.sort_by {|recipe_card| recipe_card.rating}
        largest_to_smallest_rating_cards = smallest_to_largest_rating_cards.reverse
        largest_to_smallest_rating_cards[0..2].map{|recipe_card| recipe_card.recipe}
    end

    # - `User#most_recent_recipe`
    # should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
        RecipeCard.all.max_by{|recipe_card| Time.parse(recipe_card.date)}.recipe
    end

end