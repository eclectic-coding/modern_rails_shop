# fake store api - categories
@category_response = Faraday.get "https://fakestoreapi.com/products/categories"

categories = JSON.parse(@category_response.body)

categories.each do |category|
  Category.find_or_create_by(
    name: category.tr(" ", "_").delete("'")
  )
end
puts "Seeded Categories"

# fake store api - products
@category_response = Faraday.get "https://fakestoreapi.com/products/categories"
@product_response = Faraday.get "https://fakestoreapi.com/products"
products = JSON.parse(@product_response.body)

products.each do |product|
  Product.find_or_create_by(
    title: product["title"],
    price: product["price"],
    description: product["description"],
    category: Category.find_by(name: product["category"].tr(" ", "_").delete("'")),
    image: product["image"],
    stock: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end

puts "Seeded Products"
