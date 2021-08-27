class OrdersController < ApplicationController
  def show
    @order_items = OrderItem.all

    @restaurant = Restaurant.find(params[:id])
    @order = Order.find_by(params[:order_id])

    # @orders_total = @order_items.menu_item.sum
  end

  def update
    if @order == Order.find(params[:id])
      @order.save
    else
      @order = Order.new
    end
  end

  private

  def order_params
    params.require(:order).permit(:status, :total, :user_id)
  end
end
