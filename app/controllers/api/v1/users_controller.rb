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

     private
     def user_params
       params.permit(:name, :wins, :losses)
     end

    end
  end
end
