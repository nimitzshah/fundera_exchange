class SessionsController < ApplicationController
  def new
  end

  def create
    if params.keys.include?("guest")
      @user = User.new_guest
      @user.save
    else
      @user = User.authenticate(params[:email],params[:password])
    end

    if @user
      session[:user_id] = @user.id
      redirect_to "/",:flash => {:notice => "You've been logged in"}
    else
      redirect_to log_in_path, :flash => {:error => "There was a problem logging you in"}
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out"
    redirect_to "/"
  end
end
