class TeamsController < ApplicationController

  def new
    @team = Team.new
  end

  def edit
  end

  def update
  end

  def create
  end

  def show
    @team = Team.find( params[ :team_id ] )
  end

end
