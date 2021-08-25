class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
  end

  def show
    @order_item = OrderItem.find(params[:id])
  end

  def new
    @order_item = OrderItem.new
    @order = Order.find(params[:order_id])
  end

  def create
    @order_item = OrderItems.new(order_item_params)
    @order_item.order = Order.find(params[:order_id])
    @order_item.order.user_id = current_user
    if @order_item.save
      redirect_to order_path(@order_item.order)
    else
      render :new
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:menu_item_id, :quantity)
  end

end
