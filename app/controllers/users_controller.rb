class UsersController < ApplicationController

  def new
    @user = User.new
  end
    

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account Registered!"
      redirect_to '/'
    else
      flash[:danger] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  def show
    @users = User.all
  end

  def home
    @users = User.all
  end


    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :birthday)
    end
  end
    
