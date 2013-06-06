class ActivitiesController < ApplicationController

  def index
    @activities = Activity.includes(:pictures).scoped
  end

  def new
    @activity = Activity.new
  end
end
