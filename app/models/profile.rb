class Profile < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  has_many :stats
  has_many :games, through: :stats
  validates_associated :user, :team

end
