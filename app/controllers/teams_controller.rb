class TeamsController < ApplicationController

    before_action :set_team, only: [:show, :edit, :update, :destroy]

    def index
        @teams = Team.all
        render json: @teams
    end

    def show
        render json: @team
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.create(team_params(:name, :sport, :state_id))
    end

    def edit
    end

    def update
        @team.update(team_params(:name, :sport, :state_id))
    end

    def destroy
        @team.destroy
    end

    private

    def set_team
        @team = Team.find(params[:id])
    end

    def team_params(*args)
        params.require(:team).permit(*args)
    end

end
