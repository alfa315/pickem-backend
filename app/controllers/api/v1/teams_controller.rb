class Api::V1::TeamsController < ApplicationController

  def index
   @teams = Team.all
   render json: @teams
  end

 def update
   @team = Team.find(params[:id])

   @team.update(team_params)
   if @team.save
     render json: @team
   else
     render json: {errors: @team.errors.full_messages}, status: 422
   end
 end

 private
 def team_params
   params.permit(:name)
 end

end
