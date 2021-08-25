class OrdersController < ApplicationController

  def new
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    if @order == Orders.find(params[:id])
      @order.save
    else
      @order = Order.new
    end
  end

  private

  def order_params

  end
end
