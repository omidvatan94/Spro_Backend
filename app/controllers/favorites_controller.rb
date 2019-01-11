class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorite.new(user_id: params[:user_id], bean_id: params[:bean_id])
    if @favorite.save
      render json: @favorite
    else
      render json: { error: 'WRONG'}, status: 422
    end
  end

end
