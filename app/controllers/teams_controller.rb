class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.new(team_params)
    if team.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def add
    Team.add(params[:name])
    redirect_to teams_path
  end

  def match
    Team.match
    redirect_to :back
  end

  private
  def team_params
    params.require(:team).permit(:name)
  end
end
