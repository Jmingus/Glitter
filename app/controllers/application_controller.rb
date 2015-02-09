class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_new_sparkle

  def set_new_sparkle
    @sparkle = Sparkle.new
  end
end
