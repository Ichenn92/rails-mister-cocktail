require 'open-uri'
require 'JSON'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
buffer = URI.open(url).read
results = JSON.parse(buffer)['drinks']

p results

results.sample(10).each do |result|
  Ingredient.create!(name: result["strIngredient1"])
end
