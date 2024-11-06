class ProductsController < ApplicationController
  def one_product
    @product = Product.first
    render template: "product/show"
  end

  def all_products
    @products = Product.all
    render template: "products/index"
  end
end
