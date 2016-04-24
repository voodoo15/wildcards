class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_profile, only: [ :show, :edit, :update, :destroy ]

  def edit
    @user = @profile.user
    @profile = current_user.profile
  end

  def update
    if @profile.update_attributes( profile_params )
      redirect_to root_url
    else
      render :edit
    end
  end


  private

  def profile_params
    params.require( :profile ).permit( :team_number, :nickname, :first_name, :last_name, :address, :city, :province, :postal_code, :role, :phone_number, :throws, :bats )
  end

  def find_profile
    @profile = Profile.find( params[ :id ] )
  end

end
