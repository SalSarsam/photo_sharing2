class Pic < ActiveRecord::Base
  belongs_to :comt
  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "640x480>",
                                         :thumb => "100x100#"}
end
