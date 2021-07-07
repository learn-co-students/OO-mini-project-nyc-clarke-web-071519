require "pry"
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

    def recipe_card
         RecipeCard.all.select do |rec|
             rec.user == self 
         end 
    end 

    def recipes
       recipe_card.map do |rec|
            rec.recipe
       end 
    end 

    def add_recipe_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end 

    def declare_allery(ingredient)
        Allergy.new(self, ingredient)
    end

    def all_allergy
        Allergy.all.select do |allergy|
            allergy.user == self
        end 
    end

    def allergens
        all_allergy.map do |allergy|
            allergy.ingredients
        end 
    end

    def top_three_recipes
        ratings = []
        recipe_card.each do |rcard|
            ratings << rcard.rating
        end 
        top_three = ratings.sort.pop(3)

        final_recipes = []
        recipe_card.each do |rcard|
            if top_three.include?(rcard.rating)
                final_recipes << rcard
            end
        end 
        return final_recipes
    end

    def most_recent_recipe
        recipes.pop
    end 

    def safe_recipes
        safe = []
        recipes.each do |recipe|
            ingreed = recipe.ingredients
            ingreed.each do |ingree|
                allergens.each do |allergy|
                    if ingree != allergy
                        safe << recipe
                    end 
                end 
            end 
        end 
        safe 
    end 

end 