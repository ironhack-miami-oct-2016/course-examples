class UsersController < ApplicationController

  # renders the home page
  def home
    get_current_user

    render :home
  end

  def index
    if session[:user_id]
      @users = User.all

      render :index
    else
      redirect_to "/login"
    end
  end

  # renders the signup form
  def new
    if session[:user_id]
      redirect_to "/"
    else
      render :new
    end
  end

  def show
    if session[:user_id]
      get_current_user

      render :show
    else
      redirect_to "/login"
    end
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
