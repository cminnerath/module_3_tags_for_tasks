class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome #{@user.username}!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Goodbye!'
  end

end
