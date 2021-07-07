class Allergy

    @@all = []
    attr_accessor :user, :ingredients
    def initialize(user, ingredients)
        @user = user
        @ingredients = ingredients

        @@all << self 
    end 

    def self.all
        @@all
    end 




end 