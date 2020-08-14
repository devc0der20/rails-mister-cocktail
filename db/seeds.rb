# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "populating..."
10.times do
  i = 1
  cocktail = Cocktail.create(name: Faker::Food.dish)
  ingredient = Ingredient.create(name: Faker::Food.vegetables)
  dose = Dose.create(
    description: Faker::Food.measurement,
    cocktail_id: cocktail.id,
    ingredient_id: ingredient.id
  )
  puts "dose #{i}: #{dose.description} #{dose.cocktail_id}-#{dose.ingredient.id}"
  i += 1
end
puts "DONE!"
