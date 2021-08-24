class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def update
    if @order
      @order.
    else
      @order = Order.new
    end
  end

  private

  def order_params

  end
end
