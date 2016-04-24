class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_team, only: [ :show, :edit, :update, :destroy ]

  def new
    @team = Team.new
  end

  def edit
  end

  def update
    if @team.update_attributes( team_params )
      redirect_to root_url
    else
      render :edit
    end
  end

  def create
    @team = Team.new( team_params )

    if @team.save
      redirect_to root_url, notice: "Team created"
    else
      render "new"
  end

  def show
  end

  def destroy
    @team.destroy
    redirect_to root_url, notice:  "Team removed"
  end

  private

  def find_team
    @team = Team.find( params[ :id ] )
  end

  def team_params
    params.require( :team ).permit( :team_name, :tier, :team_abbreviation )
  end

end
