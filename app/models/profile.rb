class Profile < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  validates_associated :user
  validates_associated :team

end
