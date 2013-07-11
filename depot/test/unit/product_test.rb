require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be possitive" do
    product = Product.new(title: "Test",
                          description: "Test",
                          image_url: "zzz.jpg")
    # Start test with -1 negative value
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    # Start test with -1 negative value
    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    # Start test with -1 negative value
    product.price = 1
    assert product.valid?
  end
end
