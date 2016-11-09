class ProjectsController < ApplicationController
  def index
    @projects = Project.all
                       .order(created_at: "desc")
                       .limit(10)
    render :index
  end

  def show
    @my_project = Project.find(params[:id])
    render :show
  end
end
