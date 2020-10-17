class ParksController < ApplicationController
  def index
    @parks = ParkFacade.parks_by_state(params[:state])
  end
end
