class OrdersController < ApplicationController

  def index
    @orders = Order.where(user: current_user, restaurant_id: session[:restaurant_id], created_at: Time.current.all_day)
    @orders_confirmed = @orders.where(status: "confirmed")
    @total = @orders_confirmed.pluck(:total)
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @restaurant = @order.order_items.first.menu_item.restaurant if @order.order_items.exists?
  end

  def update
    @order = Order.find(params[:id])
    if @order.status == "pending"
      @order.status = "confirmed"
      @order.set_total
      @order.save
    end
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:status, :total, :user_id)
  end
end
