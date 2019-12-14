class SeasController < ApplicationController
  
  def welcome
    render "welcome"
  end

  def index
    @seas = Sea.all
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def new
    @sea = Sea.new
  end

  def create 
    @sea = Sea.create(sea_params)
    redirect_to sea_path(@sea)
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    redirect_to sea_path(@sea)
  end

  def destroy
    @sea = Sea.find(params[:id])
    @sea.destroy
    redirect_to sea_path
  end

  private
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
