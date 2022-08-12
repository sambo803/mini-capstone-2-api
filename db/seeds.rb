# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "TV", description: "you watch it", price: 300, image_url: "https://i.pcmag.com/imagery/reviews/05USmNmGKiWMsLrCnbjnFRu-1..v1649174436.jpg")
#product.save
product = Product.new(name: "computer", description: "you code with it", price: 1200, image_url: "https://cdn.britannica.com/77/170477-050-1C747EE3/Laptop-computer.jpg")
#product.save
product = Product.new(name: "chair", description: "yyou sit on it", price: 45, image_url: "https://m.media-amazon.com/images/I/81J5r9dANGL._SL1500_.jpg")
#product.save
