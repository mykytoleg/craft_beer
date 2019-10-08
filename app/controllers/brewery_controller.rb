class BreweryController < ApplicationController
  def index
    @breweries = Brewery.includes(:city).all
  end
end
