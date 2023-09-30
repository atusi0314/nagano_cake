require "test_helper"

class Public::CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get public/orders" do
    get public_cart_items_public/orders_url
    assert_response :success
  end
end
