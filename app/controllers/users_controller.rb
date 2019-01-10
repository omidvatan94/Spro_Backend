class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { error: 'WRONG'}, status: 422}
    end
  end

  def login
    @user = User.find_by(user_name: user_params[:user_name])
    if @user && @user.validate(user_params[:password])
      render json: @user
    else
      render json: {error: "wrong username or password"}
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :user_name, :password)
  end


end
