class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])

    @qr_code = RQRCode::QRCode.new(@restaurant.qr_code)
    @svg = @qr_code.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      standalone: true
    )
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    base_url = 'https://the-card.herokuapp.com/restaurants/'    # 'www.thecardapp.biz/restaurant/'
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.qr_code = "#{base_url}#{@restaurant.id}"
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description)

  end

end
