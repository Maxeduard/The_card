class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.order = Order.find(params[:order_id])
    @order_item.order.user_id = current_user
    if @order_item.save
      redirect_to restaurant_path(@order_item.order.restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end
end
