class Gram < ActiveRecord::Base

  mount_uploader :picture, PictureUploader
  
  validates :message, presence: true
  validates :picture, presence: true
  has_many :comments

  belongs_to :user
  has_many :pictures

end
