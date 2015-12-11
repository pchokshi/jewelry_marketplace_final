class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :favorites
has_many :pieces, :through => :favorites
has_many :favorited_pieces, :through => :favorites, :source => :piece
validates :name, :presence => true, :uniqueness => true
end
