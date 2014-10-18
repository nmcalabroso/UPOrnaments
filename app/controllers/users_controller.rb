class UsersController < ApplicationController

  def new
    @error = flash[:notice]
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user
      redirect_to success_users_path
    else
      flash[:notice] = 'Error! So sad :('
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
