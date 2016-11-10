class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries

    render :index
  end
end
