json.id carted_product.id
json.user_id carted_product.user_id
json.product_id carted_product.product_id
json.order_id carted_product.order_id
json.quantity carted_product.quantity
json.status carted_product.status
json.product carted_product.product, partial: "products/product", as: :product
