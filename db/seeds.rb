# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Supplier.create(name: "Sony", email: "sony@example.com", phone_number: "8889998888")
Supplier.create(name: "ATC", email: "ATC@example.com", phone_number: "4445554444")
Supplier.create(name: "Universal Audio", email: "auaudio@example.com", phone_number: "2223332222")

Product.create(supplier_id: 1, inventory_count: 1, name: "Sony C800G", price: 10000, description: "Microphone")
Product.create(supplier_id: 2, inventory_count: 1, name: "ATC SCM25A", price: 7000, description: "Studio Monitors")
Product.create(supplier_id: 3, inventory_count: 1, name: "Apollo X8", price: 5000, description: "Audio Interface")

Image.create(product_id: 1, url: "https://cdn11.bigcommerce.com/s-tsw2okvg64/images/stencil/1280x1280/products/13417/80111/1212__13721.1603718642.jpg?c=2")
Image.create(product_id: 1, url: "https://vintageking.com/media/catalog/product/s/o/sony-c800g-pac_598_3.jpg?optimize=low&bg-color=255,255,255&fit=bounds&height=600&width=600&canvas=600:600")
Image.create(product_id: 1, url: "https://vintageking.com/media/catalog/product/s/o/sony-c800g-pac_598_2.jpg")
Image.create(product_id: 2, url: "https://atc.audio/wp-content/uploads/2023/07/SCM25A-Pro-Mk2-30deg-2.jpg")
Image.create(product_id: 3, url: "https://cdn11.bigcommerce.com/s-1ipi5w/images/stencil/1280x1280/products/3394/7694/ua-apollo-x8-front__38434.1536345729.jpg?c=2")
