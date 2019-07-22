class Allergy
    @@all = []
    attr_accessor :user, :ingredient 
    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient
        @@all << self
    end
    # - `Allergy.all`
    # should return all of the Allergy instances
    def self.all
        @@all
    end
end