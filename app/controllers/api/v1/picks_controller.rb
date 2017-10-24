class Api::V1::PicksController < ApplicationController
  def index
   @picks = Pick.all
   render json: @picks
  end

  def create
    @user = User.find(params[:user_id])
    params[:_json].each do |pick|
      @pick = Pick.create(game_id: pick[:game_id], guess_id: pick[:guess_id] , user_id: params[:user_id])
    end
    render json: @user.week_picks(@user.picks.last.game.week_id)
  end


 def update
   @pick = Pick.find(params[:id])

   @pick.update(pick_params)
   if @pick.save
     render json: @pick
   else
     render json: {errors: @pick.errors.full_messages}, status: 422
   end
 end

 private
 def pick_params
   params.permit(:name)
 end

end
