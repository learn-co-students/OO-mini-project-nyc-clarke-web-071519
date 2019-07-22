class User

    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name

        @@all << self
    end
    
    def self.all
        @@all
    end
    
    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end

    def top_three_recipes
        sorted_array = RecipeCard.all.sort {|a, b| a.rating - b.rating}
        sorted_array.last(3)
    end

    def most_recent_recipe
        recent_date = RecipeCard.all.select {|date| date}
        recent_date.last
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens
        array = Allergy.all.select {|allergy| allergy.user == self}
        array.map {|allergy| allergy.ingredient.name}
    end


end