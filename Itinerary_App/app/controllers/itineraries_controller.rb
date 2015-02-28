class ItinerariesController < ApplicationController
before_action :find_itinerary, only: [:show]

  def index
    @itineraries = Itinerary.all
  end

  def edit
  end

  def show
    @destinations = @itinerary.destinations

  end

  def add
  end

  def delete
  end


  private
  def itinerary_params
    params.require(:itinerary).permit(:name_i)
  end
  def find_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
