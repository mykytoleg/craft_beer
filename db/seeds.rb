# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

BeerSize.delete_all

Brewery.delete_all
City.delete_all
State.delete_all

ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'breweries'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'states'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'beer_sizes'")

file_breweries = Rails.root + 'db/breweries.csv'
data_breweries = SmarterCSV.process(file_breweries)
data_breweries.each do |item|
  state = State.find_or_create_by(name: item[:state])
  city = state.cities.find_or_create_by(name: item[:city])
  brewery = city.breweries.create(name: item[:name])
end

file_beers = Rails.root + 'db/beers.csv'
data_beers = SmarterCSV.process(file_beers)
data_beers.each do |item|
  size = BeerSize.find_or_create_by(size: item[:ounces])

end

