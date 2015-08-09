class Recipe < Sequel::Model 
  many_to_many :ingredients
end
