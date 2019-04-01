class SessionsController < ApplicationController
  def new
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def create
    user = User.find_by_username(params[:session][:username])
    if user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    end
  end
end
