class UsersController < ApplicationController

    before_action :authenticate, only: [:index, :show]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:results]
    end

    def create
        @user = User.new(user_params)

        if @user.save
            token = createToken(@user)
            render json: {
                success_message: "Success user #{@user.username} has been created",
                token: token
            }
        else
            render json: { message: @user.errors.messages }
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
