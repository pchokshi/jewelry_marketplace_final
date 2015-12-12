class Piece < ActiveRecord::Base
  has_many :favorites
  belongs_to :designer
  belongs_to :user
  validates :title, :presence => true, :uniqueness => true
  validates :designer_id, :presence => true
  mount_uploader :image, ImageUploader
end
