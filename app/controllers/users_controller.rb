class UsersController < ApplicationController
  def new
  end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      redirect_to "/"
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end
  private

  def user_params
    params.require(:user).permit(:email,:password,:password_confirmation)
  end
end
