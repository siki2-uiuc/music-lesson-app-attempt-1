class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(:distinct => true).includes(:genres, :location, :instruments)
    # @users = User.all.order({ :username => :asc }) 
  end

  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def email_request
    @user = User.find_by!(username: params.fetch(:username))

    redirect_to user_path(@user.username)
  end
end
