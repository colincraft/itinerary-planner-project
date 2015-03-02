class UsersController < ApplicationController
  def login
    @user = User.new 
  end

  def signup
    @user = User.new
  end

  def create
    found_user = User.find_by_email signup_params[:email]
    if found_user
      flash[:notice] = "You already have an account. Please log in."
      redirect_to users_login_path
    else
      @user = User.create signup_params
      session[:user_id] = @user.id
      redirect_to itineraries_path and return
    end
  end

  def attempt_login
    found_user = User.find_by_email signup_params[:email]
    if found_user
      authorized_user = found_user.authenticate signup_params[:password] 
      if authorized_user
        session[:user_id] = authorized_user.id
        flash[:notice] = "login complete"
        redirect_to itineraries_path and return
      else
        flash[:notice] = "login failed - incorrect password"
      end
    else
      flash[:notice] = "login failed - incorrect email"
    end
    redirect_to :back
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to users_login_path
  end

  private
  def signup_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
  end

end
