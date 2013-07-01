class Activity < ActiveRecord::Base
  attr_accessible :date, :description, :place, :title, :pictures_attributes

  has_many :pictures, :as => :pictureable
  accepts_nested_attributes_for :pictures
end
