class Beer < ApplicationRecord
  belongs_to :beer_size
  belongs_to :brewery
  belongs_to :city
  belongs_to :beer_style
end
