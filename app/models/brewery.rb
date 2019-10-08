class Brewery < ApplicationRecord
  belongs_to :city
  has_many :beers
  validates :name, presence: true
end
