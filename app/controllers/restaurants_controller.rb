class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: %i[show edit update destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(create_restaurant)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def create_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
