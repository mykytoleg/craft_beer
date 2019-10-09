class BeerStyleController < ApplicationController
  def index
    @beerStyles = BeerStyle.all
  end

  def show
    @beerStyle = BeerStyle.find(params[:id])
  end
end
