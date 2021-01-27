class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params(:name, :age, :location))
        redirect_to user_path(@user)
    end



    def user_params(*args)
        params.require(:user).permit(*args)
    end


end