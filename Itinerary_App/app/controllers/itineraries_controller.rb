class ItinerariesController < ApplicationController
  def index
    @itinerary = Itinerary.all
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    @itinerary.update_attributes itinerary_params
    redirect_to '/itineraries'
  end

  def show
  end

  def add
  end

  def delete
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:origin, :city, :name_i, :departure_date, :return_date, :creator_id)
  
  end

end
