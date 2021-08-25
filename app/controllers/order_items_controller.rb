class OrderItemsController < ApplicationController

  def create
    @order_items = OrderItems.new

  end

end
