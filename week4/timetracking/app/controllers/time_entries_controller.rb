class TimeEntriesController < ApplicationController
  def index
    @my_project = Project.find(params[:project_id])
    @my_entries = @my_project.time_entries

    render :index
  end

  def new
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new

    render :new
  end

  def create
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new(entry_params)

    if @my_entry.save
      redirect_to  project_time_entries_path(@my_project)
    else
      render :new
    end
  end


  def edit
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.find(params[:id])

    render :edit
  end

  def update
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.find(params[:id])

    if @my_entry.update(entry_params)
      redirect_to  project_time_entries_path(@my_project)
    else
      render :edit
    end
  end

  def destroy
    # 1) retrieve the project from the db
    my_project = Project.find(params[:project_id])

    # 2) retrieve the time entry from the db
    my_entry = my_project.time_entries.find(params[:id])

    # 3) delete the time entry from the db
    my_entry.destroy

    # 4) redirect away
    redirect_to  project_time_entries_path(my_project)
  end


  private

  def entry_params
    params.require(:time_entry).permit(:hours, :minutes, :date, :comments)
      #                 |                |
      #             -----     ------------
      #             |         |
      # params[:time_entry][:hours]
  end
end
