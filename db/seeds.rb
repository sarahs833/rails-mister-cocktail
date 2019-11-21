require 'open-uri'
require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
user_serialized = open(url).read
user = JSON.parse(user_serialized)

user["drinks"].each do |element|
  Ingredient.create(name: "#{element["strIngredient1"]}")
end

puts "We have created #{Ingredient.count} ingredients!"

Cocktail.destroy_all

Cocktail.create(name: "Vesper")
Cocktail.create(name: "Lemon twist")
Cocktail.create(name: "Negroni")
Cocktail.create(name: "Rose")

puts "We have created #{Cocktail.count} cocktails"


Dose.destroy_all

Dose.create(cocktail_id: 1, ingredient_id: 2, description: "Before Dinner Cocktail")
Dose.create(cocktail_id: 2, ingredient_id: 3, description: "Shake and strain into a chilled cocktail glass.")
Dose.create(cocktail_id: 3, ingredient_id: 5, description: "Shake with ice cubes. Strain into chilled cocktail glass.")

puts "We have created #{Dose.count}!"
