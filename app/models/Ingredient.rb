class Ingredient
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    # - `Ingredient.all`
    # should return all of the ingredient instances
    def self.all
        @@all
    end
    def allergies
        Allergy.all.select{|allergy| allergy.ingredient == self}
    end
    # - `Ingredient.most_common_allergen`
    # should return the ingredient instance that the highest number of users are allergic to
    def allergy_users
        allergies.map {|allergy| allergy.user}        
    end

    def self.most_common_allergen
        self.all.max_by {|ingredient| ingredient.allergy_users.length }
    end

end