require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# add store data
@store4 = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
@store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
@store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# men's stores
@mens_store = Store.where(mens_apparel: true)
@mens_store.each do |store|
  puts "The men's store name is " + store.name + " and the annual revenue is " + store.annual_revenue.to_s + "."
end

# women's stores 
@womens_store = Store.where(womens_apparel: true)
@womens_store.each do |store|
  if store.annual_revenue < 1000000 # print only if annual revenue < 1M
    puts "The women's store's name is " + store.name + " and the annual revenue is " + store.annual_revenue.to_s + "."
  end
end
