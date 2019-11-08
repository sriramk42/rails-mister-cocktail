require 'open-uri'
require 'json'

Ingredient.destroy_all

ingredient_list = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
list_parsed = JSON.parse(ingredient_list)
list_parsed["drinks"].each do |value|
  Ingredient.create(name: value["strIngredient1"])
end

Cocktail.destroy_all

url = "https://cdn.liquor.com/wp-content/uploads/2017/11/06100445/cosmopolitan-720x720-recipe.jpg"
cocktail = Cocktail.new(name: "Cosmopolitan")
cocktail.remote_photo_url = url
cocktail.save

url = "https://cdn.liquor.com/wp-content/uploads/2017/09/01105541/classic-bloody-mary-720x720-recipe.jpg"
cocktail = Cocktail.new(name: "Bloody Mary")
cocktail.remote_photo_url = url
cocktail.save

url = "https://cdn.liquor.com/wp-content/uploads/2017/11/06162353/singapore-sling-720x720-recipe.jpg"
cocktail = Cocktail.new(name: "Singapore Sling")
cocktail.remote_photo_url = url
cocktail.save
