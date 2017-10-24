class Api::V1::WeeksController < ApplicationController

  def index
   @weeks = Week.all
   render json: @weeks
  end

 def update
   @week = Week.find(params[:id])

   @week.update(week_params)
   if @week.save
     render json: @week
   else
     render json: {errors: @week.errors.full_messages}, status: 422
   end
 end

 private
 def week_params
   params.permit(:name)
 end


end
