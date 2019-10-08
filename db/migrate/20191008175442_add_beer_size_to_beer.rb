class AddBeerSizeToBeer < ActiveRecord::Migration[6.0]
  def change
    add_reference :beers, :beer_size, null: true, foreign_key: true
  end
end
