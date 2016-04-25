class Stat < ActiveRecord::Base
  belongs_to :profile
  belongs_to :game
  validates_associated :profile, :game
end
