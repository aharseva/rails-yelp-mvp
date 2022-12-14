class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save
    redirect_to restaurants_path(@restautant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def params_restaurant
  params.require(:restaurant).permit(:name, :address, :category)
  end
end
