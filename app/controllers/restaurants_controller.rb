class RestaurantsController < ApplicationController

  def show
    @restaurants = Restaurant.all
  end
end
