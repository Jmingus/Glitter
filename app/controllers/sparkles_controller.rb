class SparklesController < ApplicationController
  def index
    @sparkle = Sparkle.new
  end


  def create
    @sparkle = Sparkle.new(sparkle_params)

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
