
Category.destroy_all
Post.destroy_all
User.destroy_all

puts "All instances destroyed"


User.create!(email: ENV["ADMIN_EMAIL"], password: ENV["ADMIN_PASSWORD"])

sport = Category.create!(name: "sport")
lifestyle = Category.create!(name: "lifestyle")
deco = Category.create!(name: "deco")
zen = Category.create!(name: "zen")

puts "Categories OK !!!"

post1 = Post.create!(title: "Baseball training", body: "baseball content full", category: sport, author: "John Doe")
post2 = Post.create!(title: "Italian food", body: "pizzas content full", category: lifestyle, author: "John Doe")
post3 = Post.create!(title: "Smooth interior", body: "decoration content full", category: deco, author: "John Doe")
post4 = Post.create!(title: "Yoga zen", body: "peacefull content full", category: zen, author: "John Doe")

puts "Seed ok !!!!"
