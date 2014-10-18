class UsersController < ApplicationController

  def new
    @error = flash[:notice]
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if not @user.errors.any?
      redirect_to sign_in_users_path
    else
      flash[:notice] = true
      redirect_to sign_up_users_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:username,
                                   :name,
                                   :password,
                                   :password_confirmation)
    end
end
