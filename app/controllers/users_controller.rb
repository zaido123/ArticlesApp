class UsersController < ApplicationController
 
    def new
  @user = User.new
  end
  
  def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "Welcome to my hubmle website"
    redirect_to articles_path
  end
end
  
  private 

  def user_params
  params.require(:user).permit(:username, :email, :password)
  end

 end