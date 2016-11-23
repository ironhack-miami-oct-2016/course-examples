class SessionsController < ApplicationController

  def new
    if session[:user_id]
      redirect_to "/"
    else
      render :new
    end
  end

  def create
    user_maybe = User.find_by(email: params[:email])

    if user_maybe && user_maybe.authenticate(params[:password])
      session[:user_id] = user_maybe.id
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    # session[:user_id] = nil
    session.clear

    redirect_to "/"
  end

end
