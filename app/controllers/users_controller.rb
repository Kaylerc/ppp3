class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      msg = "Your account has been successfully created"
      p msg
      render 'show'
    else
      msg = "There was an error in creating your account.  Try again"
      p msg
      p @instructor.errors.messages
      render 'new'
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      p 'User Successfully Updated!'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
  end

private

  def set_user
    @user - User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :photo, :password, :password_confirmation)
  end
end
