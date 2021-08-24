class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @drinks = @restaurant.menu_items.where(category: "drinks")
    @mains = @restaurant.menu_items.where(category: "mains")
  end
end
