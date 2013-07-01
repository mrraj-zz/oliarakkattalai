class PicturesController < ApplicationController
  before_filter :fetch_activity

  def index
    @pictures = @activity.pictures
  end

  def new
    @picture = @activity.pictures.build
  end

  def create
    @picture = @activity.pictures.build(params[:picture])

    unless @picture.save
      render json: { errors: @picture.errors }  
    end
  end

  private
  def fetch_activity
    @activity = Activity.find(params[:activity_id])
  end
end
