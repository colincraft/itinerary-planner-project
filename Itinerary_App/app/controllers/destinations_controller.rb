class DestinationsController < ApplicationController

  before_action :find_destination, only: [:show, :edit, :update, :delete]
  before_action :find_destinationable, only: [:create]
  # def add
  # end

  def create
    c = Destination.new destination_params

        
      # binding.pry requires itinerary id , we dont have it yet

        find_destinationable.destinations << c
        if c.save
          flash[:notice] = "Successfully created a destination."
          redirect_to :back
        else
          flash[:notice] = "Something went wrong. Please try with a valid destination, bitch."
          redirect_to '/itineraries'
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
    @itinerary.destinations.delete(@destination)
    destination = Destination.find(@destination)
    destination.delete
    redirect_to :back
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

  def find_destinationable
        params.each do |name, value|
          if name =~ /(.+)_id$/
            return $1.classify.constantize.find(value)
          end
      end
      nil
  end

end
