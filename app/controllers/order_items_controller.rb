class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order = Order.find(params[:order_id])
    @order_item.order = @order
    @restaurant = @order.restaurant
    @order_item.order.user_id = current_user

    if @order_item.save
      redirect_to restaurant_path(@order_item.order.restaurant)
    else
      render 'restaurants/show'
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_path(current_user.current_order(session[:restaurant_id]))
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end
end
