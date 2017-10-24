class Api::V1::GamesController < ApplicationController

  def index
   @games = Game.all
   render json: @games
  end

 def update
   @game = Game.find(params[:id])

   @game.update(game_params)
   if @game.save
     render json: @game
   else
     render json: {errors: @game.errors.full_messages}, status: 422
   end
 end

 private
 def game_params
   params.permit(:name)
 end

end
