class RecipeCard
    @@all = []
    # - `RecipeCard#user`
    # should return the user to which the entry belongs
    # - `RecipeCard#recipe`
    # should return the recipe to which the entry belongs
    # - `RecipeCard#date`
    # should return the date of the entry
    # - `RecipeCard#rating`
    # should return the rating (an integer) a user has given their entry

    attr_accessor :user, :recipe, :date, :rating
    def initialize(user, recipe)
        @user = user
        @recipe = recipe
        @@all << self
    end
    # - `RecipeCard.all`
    # should return all of the RecipeCard instances
    def self.all
        @@all
    end
    


end