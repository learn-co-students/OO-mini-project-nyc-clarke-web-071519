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

    def self.most_common_allergen
        common_allergy ={}
        Allergy.all.each do |allergy|
            if common_allergy[allergy.ingredient.name]
                common_allergy[allergy.ingredient.name] +=1
            else
                common_allergy[allergy.ingredient.name] = 1
            end
         end
        common_allergy.max_by{|key, value| value}.shift 
    end


        # allergy_array = Allergy.all.select {|allergy| allergy.ingredient == self}
        # allergy_array.map {|allergy| allergy.user.name }
end
    
