class Picture < ActiveRecord::Base
  attr_accessible :pictureable_id, :pictureable_type, :picture

  belongs_to :pictureable, :polymorphic => true
  mount_uploader :picture, PictureUploader
end
