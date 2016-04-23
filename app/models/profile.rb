class Profile < ActiveRecord::Base
  # validates_presence_of :team_number, :nickname, :first_name, :last_name, :address,
  #                       :city, :province, :postal_code, :role, :phone_number, :throws,
  #                       :bats, on: :update

  belongs_to :user
  validates_associated :user

end
