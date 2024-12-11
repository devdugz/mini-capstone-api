require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }

    @order = Order.create(
      user_id: @user.id,
      subtotal: 100,
      tax: 9,
      total: 109,
    )
  end

  test "index" do
    get "/orders.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data.length
  end

  test "create" do
    product = Product.first
    cart_item = CartedProduct.create!(
      user_id: @user.id,
      product_id: product.id,
      quantity: 2,
      status: "carted",
    )

    assert_difference "Order.count", 1 do
      post "/orders.json"
      assert_response 200
    end

    cart_item.reload
    assert_equal "purchased", cart_item.status
    assert cart_item.order_id.present?
  end

  test "show" do
    get "/orders/#{@order.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "subtotal", "tax", "total", "carted_products", "created_at", "updated_at"], data.keys
  end
end
