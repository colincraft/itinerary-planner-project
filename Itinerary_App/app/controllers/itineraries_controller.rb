class ItinerariesController < ApplicationController
before_action :find_itinerary, only: [:show, :edit, :update]

  def index
    @itineraries = Itinerary.all
  end

  def edit
  end

  def update
    @itinerary.update_attributes itinerary_params
    redirect_to '/itineraries'
  end

  def show
    @destinations = @itinerary.destinations
    @reviews = @itinerary.reviews
  end

  def add
  end

  def delete
  end


  private

  def itinerary_params
    params.require(:itinerary).permit(:origin, :city, :name_i, :departure_date, :return_date, :creator_id)  
  end
  
  def find_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

end
