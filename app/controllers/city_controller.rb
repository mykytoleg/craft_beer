class CityController < ApplicationController
  def index
    @cities = City.includes(:state).all
  end
end
