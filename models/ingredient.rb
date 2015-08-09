class Ingredient < Sequel::Model
  many_to_many :recipes
  many_to_many :fridges
end
