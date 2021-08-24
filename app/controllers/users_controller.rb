class UsersController < ApplicationController
    #before_action :authenticate_user!, only: [:show]
    before_action :authenticate_user!, only: [:show, :edit]
    before_action :set_user, only: [:show, :edit, :update]
  
    def show
      #redirect_to root_path, notice: "You don't have permission to see this profile" unless current_user == @user
    #   @subscriptions = @user.subscriptions
    authorize @user
    end

    def edit
    authorize @user
    end

    def update
    @user.update(user_params)
    redirect_to user_path(@user)
    authorize @user
    end

    private

    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :email, :phone, :address, :photo)
    end

    def set_user
        @user = User.find(params[:id])
    end
end
