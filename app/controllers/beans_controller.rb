class BeansController < ApplicationController

  def index
    @beans = Bean.all
    render json: @beans
  end

  def create
    @bean = Bean.new(name: params[:name], img_url: params[:img_url], roaster: params[:roaster], roast_lvl: params[:roast_lvl], region: params[:region], description: params[:description], rating: params[:rating], description: params[:description], rating: params[:rating], reviews: params[:reviews])
    if @bean.save
      render json: @bean
    else
      render json: { error: 'WRONG'}, status: 422
    end
  end

  def show
    @bean = Bean.find(params[:id])
    render json: @bean
  end


  def update
    @bean = Bean.find(params[:id])
    @bean.update(name: params[:name], img_url: params[:img_url], roaster: params[:roaster], roast_lvl: params[:roast_lvl], region: params[:region], description: params[:description], rating: params[:rating], description: params[:description], rating: params[:rating], reviews: params[:reviews])
    render json: @bean
  end



end
