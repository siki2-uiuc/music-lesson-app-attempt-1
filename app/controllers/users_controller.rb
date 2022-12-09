class UsersController < ApplicationController
  def index
    @users = User.all.order({ :username => :asc }) 
  end

  def show
    @user = User.find_by!(username: params.fetch(:username))
  end
end
