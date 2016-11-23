class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def get_current_user
    @current_user = User.find_by(id: session[:user_id])

    if @current_user == nil
      @name = "Ironhacker"
    else
      @name = @current_user.username
    end
  end

end
