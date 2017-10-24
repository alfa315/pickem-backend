module Api
  module V1

    class UsersController < ApplicationController

      def index
       @users = User.all
       render json: @users
      end

     def update
       @user = User.find(params[:id])

       @user.update(user_params)
       if @user.save
         render json: @user
       else
         render json: {errors: @user.errors.full_messages}, status: 422
       end
     end

     def show
       @user = User.find(params[:id])
       render json: @user
     end

     def show_week
       @user = User.find(params[:id])
      #  byebug
       render json: @user.week_picks(params[:week_number].to_i)
     end

     private
     def user_params
       params.permit(:name, :wins, :losses)
     end

    end
  end
end
