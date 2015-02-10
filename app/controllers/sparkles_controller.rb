class SparklesController < ApplicationController
  def index
    @sparkles = Sparkle.all
    @user = User.find(params[:user_id])
  end

  def new
  @sparkle = Sparkle.new
  @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
  end

  def create
    user_id = params[:user_id]
    @sparkle = Sparkle.create(sparkle_params.merge({user_id: user_id}))

    respond_to do |format|
      if @sparkle.save
        format.html { redirect_to root_path, notice: 'Sparkle WAS CREATED!' }
        format.json { render json: @user, status: :created, location: @user }
      else
        puts 'sorry error'
      end
    end
  end

  private

  def set_sparkle
    @sparkle = Sparkle.find(params[:id])
  end

  def sparkle_params
    params.require(:sparkle).permit(:message, :user_id)
  end
end
