class UsersController < ApplicationController
  
  def new
    render :new
  end
  
  def create
    debugger
    user = User.new(user_params)
    if user.save!
      redirect_to user_url(user)
    else
      redirect_to new_user_url
    end  
  end
  
  def show
    User.find(:id)
    render :show
  end
  
  private
  
  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
