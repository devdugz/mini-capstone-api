require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(name: "Test", email: "test@test.com", password: "password")
    @product = Product.first
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
  end

  test "index" do
    CartedProduct.create(user_id: @user.id, product_id: @product.id, quantity: 2, status: "carted")
    get "/carted_products.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data.length
    assert_equal "carted", data[0]["status"]
  end

  test "create" do
    assert_difference "CartedProduct.count", 1 do
      post "/carted_products.json", params: {
                                      product_id: @product.id,
                                      quantity: 2,
                                    }
      assert_response 200
    end
  end

  test "should update status to removed on destroy" do
    carted_product = CartedProduct.create(user_id: @user.id, product_id: @product.id, quantity: 2, status: "carted")
    delete "/carted_products/#{carted_product.id}.json"
    assert_response 200

    carted_product.reload
    assert_equal "removed", carted_product.status
  end
end
