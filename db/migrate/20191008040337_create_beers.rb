class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.decimal :abv
      t.decimal :ibu

      t.timestamps
    end
  end
end
