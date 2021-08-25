class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    if @order == Order.find(params[:id])
      @order.save
    else
      @order = Order.new
    end
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:status, :total, :user_id)
  end
end
