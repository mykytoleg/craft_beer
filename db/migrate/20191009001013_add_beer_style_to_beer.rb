class AddBeerStyleToBeer < ActiveRecord::Migration[6.0]
  def change
    add_reference :beers, :beer_style, null: true, foreign_key: true
  end
end
