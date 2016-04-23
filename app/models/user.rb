class User < ActiveRecord::Base
  #before_create :build_default_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_one :team, through:  :profile

  private
  def build_default_profile
    build_profile
    true
  end

end
