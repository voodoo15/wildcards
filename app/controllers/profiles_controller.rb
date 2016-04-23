class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_profile, only: [:show, :edit, :update, :destroy]

  def create
    @profile = current_user.build_profile( profile_params )
    @profile.team_id = 1

    if @profile.save
      redirect_to  root_url
    end
  end



  private

  def profile_params
    params.require( :profile ).require( :team_number, :nickname, :first_name, :last_name, :address, :city, :province, :postal_code, :role, :phone_number, :throws, :bats )
  end

end
