class LineItem < ActiveRecord::Base
  attr_accessible :id, :product_id, :cart_id, :created_at, :updated_at, :quantity
  belongs_to :product
  belongs_to :cart
end
