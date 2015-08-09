class Fridge < Sequel::Model
  many_to_many :ingredients
end
