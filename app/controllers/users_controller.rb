class UsersController < ApplicationController

    def show
        if current_user.id != params[:id]
            flash[:alert] = "That is not your Profile. Don't do that."
            redirect_to "/"
        else
            @user = current_user
        end
    end
end
