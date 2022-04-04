require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# load store 1 and store 2
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

# change name of store 1 and save
@store1.name = "My Hood - Burnaby" 
@store1.save