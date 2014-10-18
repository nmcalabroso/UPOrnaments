class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to success_users_path
  end

  private
    def user_params
      params.require(:user).permit(:username,
                                   :name,
                                   :password,
                                   :password_confirmation)
    end
end
