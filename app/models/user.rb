class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :addcomments
  has_many :likes
   has_many :liked_comts, through: :likes, source: :comt
  attr_accessible :email, :password, :password_conf
  
  'make_flagger'

  def has_liked?(comts)
    liked_comts.include?(comts)
  end

  def like_for(comt)
    likes.where(comt_id: comt.id).first
  end



end

