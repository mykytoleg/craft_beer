class AddBreweryToBeer < ActiveRecord::Migration[6.0]
  def change
    add_reference :beers, :brewery, null: true, foreign_key: true
  end
end
