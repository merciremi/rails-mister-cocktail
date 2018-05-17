require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
drinks_serialized = open(url).read
drinks = JSON.parse(drinks_serialized)

puts 'Creating 100 ingredients...'

drinks_array = drinks['drinks']
drinks_array.each do |drink|
  ingredient = Ingredient.new(
    name: drink["strIngredient1"]
    )
  ingredient.save!
end

puts 'All done 👌'
