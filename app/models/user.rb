class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders

  def current_order(restaurant_id)
    Order.find_or_create_by(user: self, status: 'pending', restaurant_id: restaurant_id)
  end

  def pay_orders
    Order.find_or_create_by(user: self, status: 'confirmed', created_at: Time.current.all_day)
  end
end
