class Like < ActiveRecord::Base
  attr_accessible :comt_id, :user_id
  belongs_to :user
  belongs_to :comt 
end
