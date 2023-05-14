# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning ice creams, toppings and containers..."
IceCream.destroy_all
Topping.destroy_all
Container.destroy_all

ices = ["Vanilla", "Chocolate", "Mint chocolate chip", "Strawberry", "Milk", "Caramel", "Grapes", "Matcha", "Pistachio", "Sesame"]

ices.each do |ice|
  newice = IceCream.create(name: ice)
end

puts "created #{IceCream.count} ice creams!"

toppings = ["Whipped cream", "Chocolate syrup", "Azuki", "Almond chips", "Raspberry sauce", "nutella", "Warabimochi", "Crushed cookie", "Banana", "Natto"]

toppings.each do |topping|
  newtopping = Topping.create(name: topping)
end

puts "created #{Topping.count} toppings!"

containers = ["Cup", "Waffle cone", "Crepe", "Pancake", "Apple pie", "Toast", "Steak", "Rice", "Bucket", "Barrel"]

containers.each do |container|
  newcontainer = Container.create(name: container)
end

puts "created #{Container.count} toppings!"
