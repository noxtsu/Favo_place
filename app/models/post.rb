class Post < ApplicationRecord

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  attachment :place_image

  validates :place_name, presence: true
  validates :place_image, presence: true
  validates :text, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

end
