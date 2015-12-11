class Favorite < ActiveRecord::Base
  belongs_to :piece
  belongs_to :user
  validates :user, :presence => true
  validates :piece, :presence => true, :uniqueness => { :scope => :user }
end
