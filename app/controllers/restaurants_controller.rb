class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.find(params[:id])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new(restaurant_params)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save!

  end

 private

 def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
 end

end
