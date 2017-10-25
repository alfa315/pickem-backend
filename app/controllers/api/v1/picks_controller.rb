class Api::V1::PicksController < ApplicationController
  def index
   @picks = Pick.all
   render json: @picks
  end

  def create
    @user = User.find(params[:user_id])
    params[:_json].each do |pick|
      if @user.games_picked.include?(pick[:gameId])
        @pick = @user.picks.find do |user_pick|
          user_pick.game_id == pick[:gameId]
        end
        @pick.update(guess_id: pick[:guessId])
      else
        @pick = @user.picks.create(game_id: pick[:gameId], guess_id: pick[:guessId], week: Week.get_week_by_week_number(pick[:weekNumber]))
      end
    end
    render json: @user.week_picks(@pick.week.week_number)
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
