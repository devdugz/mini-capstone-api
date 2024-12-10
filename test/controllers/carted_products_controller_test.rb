require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carted_products_index_url
    assert_response :success
  end

  test "should get create" do
    get carted_products_create_url
    assert_response :success
  end

  test "should get destroy" do
    get carted_products_destroy_url
    assert_response :success
  end
end
