class DestinationsController < ApplicationController
  before_action :find_destination, only: [:show]
  
  def add
  end

  def edit
  end

  def delete
  end

  def show
    @reviews = @destination.reviews
  end
  private
  def find_destination
    @destination = Destination.find(params[:id])
  end

end
