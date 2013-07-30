class UsersController < ApplicationController
  respond_to :js, only: :create
  def index
    @user = User.new
  end

  def new
  end


  def create
    connect_to params[:user][:db]
    @user = User.new
    @user.email = params[:user][:email]
    @user.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
