class UsersController < ApplicationController

  
  def show
    @user= User.find(params[:id])
    @title = @user.name
  end
  def new
    @title= "Sign up"
    @user=User.new
    
  end

  def create
    @title ="Sign up"
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Zappening?"
      redirect_to @user
    else
      render 'new'
    end
 
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  
  
end
