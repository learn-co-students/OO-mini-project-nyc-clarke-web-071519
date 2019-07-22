class Ingredient

      attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name 

        @@all << self 
    end 

    def self.all
        @@all
    end 

    def allergy
        Allergy.all.select do |aller|
            aller.ingredients == self 
        end 
    end 

    def self.most_common_allergen
        highest_num = 0
        Ingredient.all.each do |ingreed|
            if ingreed.allergy.count > highest_num
                highest_num = ingreed.allergy.count 
            end 
        end 
        Ingredient.all.each do |ingreed|
            if ingreed.allergy.count == highest_num
                return ingreed 
            end 
        end 
    end 

end 
