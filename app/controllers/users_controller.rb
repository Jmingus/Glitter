class UsersController < ApplicationController
  before_action :set_user, only: [:profile]
  def index
    @users = User.all
    @user = User.new
    @sparkles = Sparkle.all
    @sparkle = Sparkle.new
  end

  def profile
  end

  def show
    @user = User.new
  end


  def new

  end


  def display

  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'USER WAS CREATED!' }
        format.json { render json: @user, status: :created, location: @user }
      else
          puts 'sorry error'
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :profile_name,:location, :photo_url, :bio)
  end
end
