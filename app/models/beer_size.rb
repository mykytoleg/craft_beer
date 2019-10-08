# frozen_string_literal: true

class BeerSize < ApplicationRecord
  has_many :beers
  validates :size, presence: true
  validates :size, numericality: true
end
