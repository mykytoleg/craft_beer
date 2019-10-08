class BeerSize < ApplicationRecord
  #has_many :beers
  validates :size, presence: true
end
