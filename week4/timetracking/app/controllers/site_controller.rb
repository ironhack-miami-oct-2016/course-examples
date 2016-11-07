class SiteController < ApplicationController
  def home
    render "home"
  end

  def contact
    render "contact"
  end

  def say_name
    @name = params[:name]

    render "say_name"
  end
end
