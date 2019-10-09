class City < ApplicationRecord
  belongs_to :state
  has_many :breweries
  has_many :beers
  validates :name, presence: true
end
