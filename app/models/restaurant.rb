class Restaurant < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  has_many :orders, dependent: :destroy
end
