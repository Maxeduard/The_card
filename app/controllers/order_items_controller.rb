class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order = Order.find(params[:order_id])
    @order_item.order = @order
    @restaurant = @order.restaurant
    @order_item.order.user_id = current_user

    @present_order_item = @order.order_items.find_by(menu_item_id: order_item_params[:menu_item_id])
    if @present_order_item
      @present_order_item.quantity += 1
      @present_order_item.save
      redirect_to restaurant_path(@order_item.order.restaurant)
    else
      if @order_item.save
        redirect_to restaurant_path(@order_item.order.restaurant)
      else
        render 'restaurants/show'
      end
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_path(current_user.current_order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end
end
