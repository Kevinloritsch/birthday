class UsersController < ApplicationController

  def new
    @user = User.new
  end
    

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/thank'
    else
      render 'new'
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
    