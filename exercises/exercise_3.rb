require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
# load store 3 and delete
@store3 = Store.find_by(id: 3)
@store3.destroy

# total amount of stores
puts "There are a total of " + Store.count.to_s + " stores."