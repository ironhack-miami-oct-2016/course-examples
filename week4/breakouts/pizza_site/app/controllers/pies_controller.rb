class PiesController < ApplicationController
  def index
    @pies = Pie.order(price: "desc")

    render :index
  end

  def new
    @the_pie = Pie.new
    render :new
  end

  def create
    @the_pie = Pie.new(
      flavor: params[:pie][:flavor],
      price: params[:pie][:price],
      size: params[:pie][:size])

    @the_pie.save

    redirect_to pies_path
  end
end
