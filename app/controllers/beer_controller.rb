class BeerController < ApplicationController
  def index
    @beers = Beer.order(:name).page(params[:page])
  end

  def show
    @beer = Beer.find(params[:id])
  end
end
