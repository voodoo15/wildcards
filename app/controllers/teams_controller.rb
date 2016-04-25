class TeamsController < ApplicationController
  before_action :authenticate_user!
  # before_action :find_team, only: [ :show, :edit, :update, :destroy ]

  def index
    @team = Team.all
  end

  def new
    @team = Team.new
  end

  def edit
    @team = Team.find( params[ :id ] )

  end

  def update
    @team = Team.find( params[ :id ] )

    if @team.update_attributes( team_params )
      redirect_to team_path
    else
      render :edit
    end
  end

  def create
    @team = Team.new( team_params )

    if @team.save
      redirect_to teams_url, notice: "Team created"
    else
      render "new"
    end
  end

  def show
    @team = Team.find( params[ :id ] )
  end

  def destroy
    @team = Team.find( params[ :id ] )
    @team.destroy
    redirect_to teams_url, notice:  "Team removed"
  end

  private

  def find_team
    @team = Team.find( params[ :id ] )
  end

  def team_params
    params.require( :team ).permit( :team_name, :tier, :team_abbreviation )
  end

end
