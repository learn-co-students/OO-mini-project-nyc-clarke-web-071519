class Ingredient
  attr_reader :ing_name

@@all = [ ]

def initialize(ing_name)
  @name = ing_name
  @@all << self
end

def self.all
  @@all
end

def allergens
  Allergy.all.select {|allergy| allergy.ingredients == self}
end

def self.most_common_allergen
 Ingredient.all.max_by(&:ing_name).allergens
end

end
  
  
  
  
  
  
  
  

