class UsersController < ApplicationController
  def index
	  @users = User.all
  end

  def new
  end

  def create
	  @user = User.new(user_params)
    
		UserMailer.send_welcome(@user).deliver_now

	  redirect_to users_index_path
  end

  private

  def user_params
	  params.require(:user).permit(:name, :email)
  end

end
