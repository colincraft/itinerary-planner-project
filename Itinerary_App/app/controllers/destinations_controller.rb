class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :edit, :update]

  # def add
  # end

  def create
    binding.pry
  end


  def new
    binding.pry
   @destination = Destination.new
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
