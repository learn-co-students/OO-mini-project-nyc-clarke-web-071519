class Recipe 

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name 

        @@all << self 
    end 

    def recipe_card
        RecipeCard.all.select do |rcard|
            rcard.recipe == self
        end
    end

    def self.most_popular
        largest_num = 0
        Recipe.all.each do |recipe|
            if recipe.recipe_card.length > largest_num
                largest_num = recipe.recipe_card.length
            end 
        end 
        Recipe.all.select do |recipe|
            recipe.recipe_card.length == largest_num
        end
    end 

    def users
        recipe_card.map do |rcard|
            rcard.user 
        end 
    end

    def recipe_ingredients
        RecipeIngredient.all.select do |ring|
            ring.recipe == self
        end 
    end

    def ingredients 
        recipe_ingredients.map do |ring|
            ring.ingredients 
        end 
    end

    def self.all
        @@all
    end 

    def allergens 
        all_allergens = []
        users.each do |user|
            all_allergens << user.allergens
        end 
        all_allergens
    end 

    def add_ingredients(ingred_arr)
        ingred_arr.each do |ingred|
            RecipeIngredient.new(self, ingred)
        end 
    end 

end 