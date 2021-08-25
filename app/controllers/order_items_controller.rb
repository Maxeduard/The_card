class OrderItemsController < ApplicationController

  def create
    @order_items = OrderItems.new
    @order_items.menu_item
  end

end
