# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brewery.delete_all
City.delete_all
State.delete_all

file = Rails.root + 'db/breweries.csv'
# options = { file_encoding: 'iso-8859-1' }
# products = SmarterCSV.process(file, options)
data = SmarterCSV.process(file)
data.each do |item|
  state = State.find_or_create_by(name: item[:state])
  city = state.cities.find_or_create_by(name: item[:city])
  brewery = city.breweries.create(name: item[:name])
end