class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :order_items, dependent: :destroy

  def set_total
    total = 0
    order_items.each do |element|
      total += element.quantity * element.menu_item.price
    end
    self.total = total
  end
end
