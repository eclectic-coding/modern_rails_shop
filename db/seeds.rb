# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# fakestoreapi - products
@response = Faraday.get "https://fakestoreapi.com/products"

products = JSON.parse(@response.body)

products.each do |product|
  Product.find_or_create_by(
    title: product["title"],
    price: product["price"],
    description: product["description"],
    category: product["category"],
    image: product["image"],
    stock: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end

puts "Seeded Product table"
