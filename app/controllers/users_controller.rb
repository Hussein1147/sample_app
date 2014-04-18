class UsersController < ApplicationController

  
  def show
    @user= User.find(params[:id])
    @title = @user.name
  end
  def new
    @title= "Sign up"
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to_action 'show'
    else
      render action 'new'
    end
 
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  
  
end
