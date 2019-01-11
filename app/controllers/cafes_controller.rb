class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
    render json: @cafes
  end



end
