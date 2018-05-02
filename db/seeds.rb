
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

post1 = Post.create!(title: "Baseball training", body: "The most common lorem ipsum text reads as follows: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", category: sport, author: "John Doe")
post2 = Post.create!(title: "Italian food", body: "The most common lorem ipsum text reads as follows: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", category: lifestyle, author: "John Doe")
post3 = Post.create!(title: "Smooth interior", body: "The most common lorem ipsum text reads as follows: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", category: deco, author: "John Doe")
post4 = Post.create!(title: "Yoga zen", body: "The most common lorem ipsum text reads as follows: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", category: zen, author: "John Doe")

puts "Seed ok !!!!"
