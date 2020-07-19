class UsersController < ApplicationController
  include CurrentUserConcern

  # Render all users
  def index
    @users = User.all
    render json: @users
  end

  #Create new User
  def create
    @user = User.create(username: params[:username], email: params[:email])
    render json: user
    if @user 
      render json: @user
    else
      render json: {message: "Failed to create user. Please check the information you entered and try again."}
    end
  end

  # Delete User
  def destroy
  end
end
