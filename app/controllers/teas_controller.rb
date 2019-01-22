class TeasController < ApplicationController
  #GET all
  def index
    render json: Tea.all
  end

  #GET
  def show
    render json: Tea.find(params[:id])
  end

  #POST
  def create
    render json: Tea.create(tea_params)
  end

  #PATCH
  def update
    Tea.find(params[:id]).update(tea_params)
    render json: Tea.find(params[:id])
  end

  #DELETE
  def destroy
    render json: Tea.find(params[:id]).destroy
  end

  private
  def tea_params
    params.require(:tea).permit(:name, :image_url, :description, :in_stock)
  end
end
