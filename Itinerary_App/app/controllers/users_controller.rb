class UsersController < ApplicationController
  def login
    @user = User.new 
  end

  def signup
    @user = User.new
  end

  def create
    User.create signup_params
    redirect_to users_login_path
  end

  def attempt_login
    found_user = User.find_by_email signup_params[:email]
    if found_user
      authorized_user = found_user.authenticate signup_params[:password] 
      if authorized_user
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
  end

  private
  def signup_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
  end

end
