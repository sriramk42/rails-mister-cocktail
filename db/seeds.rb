require 'open-uri'
require 'json'

Ingredient.destroy_all

ingredient_list = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
list_parsed = JSON.parse(ingredient_list)
list_parsed["drinks"].each do |value|
  Ingredient.create(name: value["strIngredient1"])
end

