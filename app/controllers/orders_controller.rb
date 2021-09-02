class OrdersController < ApplicationController

  def index
    @restaurant = Restaurant.find(session[:restaurant_id])
    @orders = Order.where(user: current_user, restaurant_id: session[:restaurant_id], created_at: Time.current.all_day)
    @orders_confirmed = @orders.where(status: "confirmed")
    @total = @orders_confirmed.pluck(:total)
  end

  def show
    @restaurant = Restaurant.find(session[:restaurant_id])
    @order = Order.find(params[:id])
    @order_items = @order.order_items.order(:created_at)
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

  def paid
    @orders = Order.where(user: current_user, restaurant_id: session[:restaurant_id], created_at: Time.current.all_day)
    @orders_confirmed = @orders.where(status: "confirmed")
    @restaurant = Restaurant.find(session[:restaurant_id])
    @orders_confirmed.each do |order|
      order.status = "paid"
      order.save
    end
    @orders_paid = @orders.where(status: "paid")
    @total = @orders_paid.pluck(:total)
  end

  # def quantity_update
  #   respond_to do |format|
  #     format.json
  #     raise
  #   end

  # end

  private

  def order_params
    params.require(:order).permit(:status, :total, :user_id)
  end
end
