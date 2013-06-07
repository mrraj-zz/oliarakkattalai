class Activity < ActiveRecord::Base
  attr_accessible :date, :description, :place, :title

  has_many :pictures, :as => :pictureable
  accepts_nested_attributes_for :pictures
end
