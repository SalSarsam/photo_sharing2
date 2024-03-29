class Addcomment < ActiveRecord::Base
  attr_accessible :content, :comt_id

  belongs_to :comt
  
  
  before_validation :print_me_something

  scope :ordered_by_title, order("title ASC")
  scope :with_empty_content, where(content: "")

  private

  def print_me_something
    puts "something"
  end
end
