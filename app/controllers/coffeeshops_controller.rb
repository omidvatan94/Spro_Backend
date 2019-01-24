class CoffeeshopsController < ApplicationController

  def index
    @coffeeshop = Coffeeshop.all
    render json: @coffeeshop
  end

  def create
    @coffeeshop = Coffeeshop.new(name: params[:name], address: params[:address], roaster: params[:roaster])
    if @coffeeshop.save
      render json: @coffeeshop
    else
      render json: { error: 'WRONG'}, status: 422
    end
  end

  def show
    @coffeeshop = Coffeeshop.find(params[:id])
    render json: @coffeeshop
  end

end
