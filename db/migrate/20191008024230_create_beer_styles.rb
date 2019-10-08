class CreateBeerStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_styles do |t|
      t.string :name

      t.timestamps
    end
  end
end
