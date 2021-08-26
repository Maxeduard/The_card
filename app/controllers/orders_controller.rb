class OrdersController < ApplicationController
  def show
    @order = Order.find_by(params[:order_id])
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

#@order = Order.find us
