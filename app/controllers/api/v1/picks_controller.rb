class Api::V1::PicksController < ApplicationController
  def index
   @picks = Pick.all
   render json: @picks
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
