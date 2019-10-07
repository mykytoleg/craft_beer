class City < ApplicationRecord
  belongs_to :state
  has_many :breweries
  validates :name, presence: true
end
