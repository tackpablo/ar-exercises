require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# create employee data
# different from store data creation due to employees belonging to specific stores
@store1.employees.create(first_name: "Tom", last_name: "Ford", hourly_rate: 40)
@store1.employees.create(first_name: "Tom", last_name: "Cruise", hourly_rate: 20)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 60)
@store2.employees.create(first_name: "Mary", last_name: "Jane", hourly_rate: 10)
@store4.employees.create(first_name: "Peter", last_name: "Parker", hourly_rate: 55)
@store4.employees.create(first_name: "Colt", last_name: "Steel", hourly_rate: 60)
@store5.employees.create(first_name: "Jonas", last_name: "Schmedtmann", hourly_rate: 60)
@store5.employees.create(first_name: "James", last_name: "Bond", hourly_rate: 30)
@store6.employees.create(first_name: "Emma", last_name: "Stone", hourly_rate: 70)
@store6.employees.create(first_name: "Keira", last_name: "Knightly", hourly_rate: 40)