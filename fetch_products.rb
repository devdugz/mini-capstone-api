require "http"
require "json"

BASE_URL = "http://localhost:3000"

# Fetch all products
def fetch_all_products
  response = HTTP.get("#{BASE_URL}/all_products.json")
  if response.status.success?
    products = JSON.parse(response.body.to_s)
    display_products(products)
  else
    puts "Error fetching products: #{response.status}"
  end
end

# Fetch one product
def fetch_one_product
  response = HTTP.get("#{BASE_URL}/one_product.json")
  if response.status.success?
    product = JSON.parse(response.body.to_s)
    display_product(product)
  else
    puts "Error fetching product: #{response.status}"
  end
end

# Display all products
def display_products(products)
  puts "All Products:"
  products.each do |product|
    puts "Name: #{product["name"]}, Price: #{product["price"]}, Description: #{product["description"]}, Image URL: #{product["image"] ? product["image"]["url"] : "No image available"}"
  end
end

# Display one product
def display_product(product)
  puts "Product Details:"
  puts "Name: #{product["name"]}"
  puts "Price: #{product["price"]}"
  puts "Description: #{product["description"]}"
  puts "Image URL: #{product["image"] ? product["image"]["url"] : "No image available"}"
end

# Run the script
puts "Fetching all products..."
fetch_all_products

puts "\nFetching one product..."
fetch_one_product
