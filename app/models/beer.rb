class Beer < ApplicationRecord
  belongs_to :beer_size
  belongs_to :brewery
end
