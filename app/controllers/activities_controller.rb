class ActivitiesController < ApplicationController

  def index
    @activities = Activity.includes(:pictures).scoped
  end

  def new
    @activity = Activity.new
    @picture  = @activity.pictures.build
  end

  def create
  end
end
