class Comt < ActiveRecord::Base

  attr_accessible :title, :content, :pics_attributes, :image, :name
  validates :title, presence: true
   has_many :addcomments, dependent: :destroy
  has_many :pics
  has_many :likes
  has_many :users, through: :likes
  belongs_to :user
  accepts_nested_attributes_for :pics, :allow_destroy => true

  has_many :addcomments, dependent: :destroy

   def self.search(search)
  if search
    where('title LIKE ?', "%#{search}%" )
  else
    
scoped

     end
end


end
