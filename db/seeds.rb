# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Sony C800G", price: 10000, image_url: "https://cdn11.bigcommerce.com/s-tsw2okvg64/images/stencil/1280x1280/products/13417/80111/1212__13721.1603718642.jpg?c=2", description: "Microphone")
Product.create(name: "ATC SCM25A", price: 7000, image_url: "https://atc.audio/wp-content/uploads/2023/07/SCM25A-Pro-Mk2-30deg-2.jpg", description: "Studio Monitors")
Product.create(name: "Apollo X8", price: 5000, image_url: "https://cdn11.bigcommerce.com/s-1ipi5w/images/stencil/1280x1280/products/3394/7694/ua-apollo-x8-front__38434.1536345729.jpg?c=2", description: "Audio Interface")
