class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order = Order.find(params[:order_id])
    @order_item.order = @order
    @restaurant = @order.restaurant
    @order_item.order.user_id = current_user
    @present_order_item = @order.order_items.find_by(menu_item_id: order_item_params[:menu_item_id])
    if @present_order_item
      @order_present = true
    else
      @order_present = false
    end
    # binding.pry
    respond_to do |format|
      if @present_order_item
        @present_order_item.quantity += 1
        @present_order_item.save
        @quantity = @present_order_item.quantity
        format.js
      else
        if @order_item.save
          @quantity = 1
          format.js
        else
          render 'restaurants/show'
        end
      end
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to order_path(current_user.current_order(session[:restaurant_id]))
  end

  def update
    @order_item = OrderItem.find(params[:id])
    if params[:change] == "+"
      @order_item.quantity += 1
    else
      @order_item.quantity -= 1
    end
    @order_item.save
    redirect_to order_path(@order_item.order)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end
end
