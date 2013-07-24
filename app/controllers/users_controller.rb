class UsersController < ApplicationController

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
  redirect_to :users
end

def edit
end

def update
end

def destroy
end

end
