class ActivitiesController < ApplicationController

  def index
    @activities = Activity.includes(:pictures).scoped
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(params[:activity])
    if @activity.save
      redirect_to activities_path, notice: "Activity created successfully."
    else
      render action: new
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
