class Api::SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user
      login(@user)
      render 'api/users/show'
    else
      render json: ['Invalid Username or Password'], status: 401
    end

  end

  def destory
    @user = current_user
    if @user
      logout
      render 'api/users/show'
    else
      render json: ["There isn't anyone currently logged in..."], status: 404
    end
  end

end