class Post < ApplicationRecord
  
  attachment :place_image
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end


  validates :place_name, presence: true
  validates :place_image, presence: true
  validates :text, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

end
