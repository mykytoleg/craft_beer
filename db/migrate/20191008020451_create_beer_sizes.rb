class CreateBeerSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_sizes do |t|
      t.decimal :size

      t.timestamps
    end
  end
end
