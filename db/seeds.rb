# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create(name: "Sony C800G", price: 10000, image_url: "test_image_microphone", description: "Microphone")
Product.create(name: "ATC SCM25A", price: 7000, image_url: "test_image_speaker", description: "Studio Monitors")
Product.create(name: "Apollo X8", price: 5000, image_url: "test_image_interface", description: "Audio Interface")
