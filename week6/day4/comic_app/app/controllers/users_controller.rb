class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @the_user = User.find(params[:id])
    @comics_list = @the_user.comics
    render :show
  end
end
