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
url_1 ="https://res.cloudinary.com/dyaa1wcat/image/upload/v1574410325/download_2_q3u4u3.jpg"
url_2 = "https://res.cloudinary.com/dyaa1wcat/image/upload/v1574410317/download_1_cns1js.jpg"
url_3 = "https://res.cloudinary.com/dyaa1wcat/image/upload/v1574410311/download_g9vbly.jpg"
url_4 = "https://res.cloudinary.com/dyaa1wcat/image/upload/v1574410302/ab4a0c63-62ff-481c-9dd5-5044d9e9a08b--vesper-cocktail_food52_mark_weinberg_14-11-18_0063_cttv7t.jpg"
cocktail = Cocktail.new(name: "Vesper")
cocktail.remote_photo_url = url_1
cocktail.save
cock = Cocktail.new(name: "Lemon twist")
cock.remote_photo_url = url_2
cock.save
coc = Cocktail.new(name: "Negroni")
coc.remote_photo_url = url_3
coc.save
co =Cocktail.new(name: "Rose")
co.remote_photo_url = url_4
co.save

puts "We have created #{Cocktail.count} cocktails"


Dose.destroy_all

Dose.create(cocktail_id: 1, ingredient_id: 2, description: "Before Dinner Cocktail")
Dose.create(cocktail_id: 2, ingredient_id: 3, description: "Shake and strain into a chilled cocktail glass.")
Dose.create(cocktail_id: 3, ingredient_id: 5, description: "Shake with ice cubes. Strain into chilled cocktail glass.")

puts "We have created #{Dose.count}!"
