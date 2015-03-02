class ItinerariesController < ApplicationController
before_action :find_item, only: [:show, :edit, :update]

  def index
    unless session[:user_id]
      redirect_to users_login_path, alert: "Please log in"
    else
      @user = User.find session[:user_id]
      @itineraries = Itinerary.all
    end
  end

  def edit
  end

  def new
    @itinerary = Itinerary.new
    @destination = Destination.new
  end

  def create
    itinerary = Itinerary.create itinerary_params
    if itinerary_params["departure_date"].to_date < itinerary_params["return_date"].to_date
      if itinerary.save
          redirect_to '/itineraries'
      else
          render :new
      end
    else
      flash[:notice] = "Invalid dates, bitch."
          redirect_to :back
    end    
  end

  def update
    @itinerary.update_attributes itinerary_params
    redirect_to @itinerary
  end

  def show
    @destinations = @itinerary.destinations
    @reviews = @itinerary.reviews
  end

  # def add  
  # end

  def delete
  end


  private

  def itinerary_params
    params.require(:itinerary).permit(:origin, :city, :name_i, :departure_date, :return_date, :creator_id)  
  end
  
  def find_item
    @itinerary = Itinerary.find(params[:id])
    # @destinations = @itinerary.destinations
    @destinations = @itinerary.destinations.order('date ASC')
  end

end
