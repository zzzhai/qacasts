class PositionsController < ApplicationController
  before_filter :auth_user

  def index
    @positions =Position.all
  end

  def show
    @position = Position.find(params[:id])
  end
end
