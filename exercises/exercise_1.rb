require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# create store data
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true)

#total amount of stores
puts "There are a total of " + Store.count.to_s + " stores."