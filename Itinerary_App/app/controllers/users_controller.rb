class UsersController < ApplicationController
  def login
  end

  def signup
    @user = User.new
  end

  def create
    User.create form_params
    redirect_to '/itineraries'
  end

  def logout
  end

  private
  def form_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
  end
end
