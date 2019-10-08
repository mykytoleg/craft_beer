class StateController < ApplicationController
  def index
    @states = State.all
  end
end
