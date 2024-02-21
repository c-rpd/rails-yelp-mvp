# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurant = Restaurant.create!(name: "La cigalle", address: "nantes", category: "french")
restaurant = Restaurant.create!(name: "Mcdo", address: "Le Bignon", category: "chinese")
restaurant = Restaurant.create!(name: "Burger King", address: "Basse-Goulaine", category: "italian")
restaurant = Restaurant.create!(name: "O-Tacos", address: "Angers", category: "french")
restaurant = Restaurant.create!(name: "La locomotive", address: "Nantes", category: "french")
