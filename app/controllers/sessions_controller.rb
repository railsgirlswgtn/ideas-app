class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = User.find_by(params.require(:user).permit(:username))
      # login hack
      if @user.password == params[:user][:password]
        session[:current_user_id] = @user.id
        redirect_to root_path
        return
      end
    end

    @user = User.new(params.require(:user).permit(:username))
    flash[:error] = 'Invalid login'
    render :new
  end

  def destroy
    session.delete(:current_user_id)
    redirect_to root_path
  end
end
