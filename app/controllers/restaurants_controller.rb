class RestaurantsController < ApplicationController

  def show
    @order_item = OrderItem.new
    @restaurant = Restaurant.find(params[:id])
    create_order
    @drinks = @restaurant.menu_items.where(category: "drinks")
    @mains = @restaurant.menu_items.where(category: "mains")

    @customer_order_quantities = {}
    @order.order_items.each do |order_item|
      @customer_order_quantities[order_item.menu_item.name] = order_item.quantity
    end

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
    # 'www.thecardapp.biz/restaurant/'
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      url = "https://the-card.herokuapp.com/restaurants/#{@restaurant.id}"
      @restaurant.qr_code = url
      @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description)
  end

  def create_order
    @order = Order.find_by(user: current_user, restaurant: @restaurant, status: "pending")
    @order ||= Order.create(user: current_user, restaurant: @restaurant, status: "pending")
  end
end
