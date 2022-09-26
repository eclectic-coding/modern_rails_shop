FactoryBot.define do
  factory :product do
    title { "MyString" }
    price { "9.99" }
    description { "MyText" }
    category { nil }
    image { "MyString" }
    stock { "9.99" }
  end
end
