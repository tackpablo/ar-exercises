require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# total sum of all revenue
total = Store.sum(:annual_revenue)
puts "The total revenue for the company is $" + total.to_s + "."

# revenue average
average = Store.average(:annual_revenue)
puts "The average revenue for the company is $" + average.to_s + "."

# the number of stores that have an annual revenue > 1M
revenue_over_1_mil = Store.where("annual_revenue > ?", 1000000).count
puts "There are " + revenue_over_1_mil.to_s + " stores that are generating over 1M in sales."