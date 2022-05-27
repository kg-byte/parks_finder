class ParksController < ApplicationController
  def index
    @parks = ParksFacade.search_by_state(params[:state])
  end

end