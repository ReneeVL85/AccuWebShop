class Product < ActiveRecord::Base
  has_many :order_lines
  has_many :orders
  has_many :user
end
