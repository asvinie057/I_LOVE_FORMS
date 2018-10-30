class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new
    puts params
    user.username = params[:username]
    user.email = params[:email]
    user.bio = params[:bio]
    user.save
  end
  def index
    @users = User.all
  end
end