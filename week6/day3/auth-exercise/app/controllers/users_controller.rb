class UsersController < ApplicationController
  before_action :check_if_logged_in, only: [:show]
  before_action :check_if_admin, only: [:index]
  before_action :get_current_user, only: [:home, :show]

  # renders the home page
  def home
    render :home
  end

  def index
    @users = User.all

    render :index
  end

  # renders the signup form
  def new
    if session[:user_id]
      flash[:login_success] = "You already have an account."
      redirect_to "/"
    else
      render :new
    end
  end

  def show
    render :show
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
