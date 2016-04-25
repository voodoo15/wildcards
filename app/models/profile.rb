class Profile < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  has_many :stats
  validates_associated :user, :team

end
