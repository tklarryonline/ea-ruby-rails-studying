class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title

  def price_string
    "$#{price}"
  end
end
