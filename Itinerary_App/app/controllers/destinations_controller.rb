class DestinationsController < ApplicationController

  before_action :find_destination, only: [:show, :edit, :update]

  # def add
  # end

  def create
    destination = Destination.create destination_params
    if destination.save

      redirect_to '/itineraries'
    else
      render :new
    end
  end


  def new
   @destination = Destination.new
  end
  
  def addrails

  end


  def edit
  end

  def update
   @destination.update_attributes destination_params
   redirect_to edit_itinerary_path(@itinerary.id)
  end

  def delete
  end

  def show
    @reviews = @destination.reviews
  end



  private

  def destination_params
    params.require(:destination).permit(:location, :name_d, :date, :itinerary_id)
  end
  
  
  def find_destination
    @destination = Destination.find(params[:id])
    @itinerary = @destination.itinerary 
  end



end
