require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store # each employee belongs to a store
  validates :first_name, :last_name, :hourly_rate, :store, presence: true # validates that all these fields are required
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 } # hourly rate has to be an integer and between 40 and 200
end


class Store < ActiveRecord::Base
 has_many :employees # each store can have many employees
 
 validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence: true # validates that all these fields are required
 validates :name, length: { minimum: 3 } # name of store has to be greater than 3
 validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0} # annual revenue has to be an integer and greater than 0

 validate :carry_apparel

 def carry_apparel
  if mens_apparel == false && womens_apparel == false
    errors[:mens_apparel] << "A store needs to carry either Men's or Women's apparel."
  end
 end
end

# ask the user for store name
print "Please provide a store name: "
store_name = gets.chomp.to_s

new_store = Store.create(name: store_name, annual_revenue: 1200000, mens_apparel: true, womens_apparel: true)
# p new_store.errors.full_messages
p "Is the store valid? " + new_store.valid?.to_s
p "----- REASONS WHY IT IS NOT VALID -----"
p "Naming Error: " + new_store.errors[:name].to_s # check if there is a naming error
p "Annual Revenue Error: " + new_store.errors[:annual_revenue].to_s # check if there is an annual revenue error
p "Mens/Womens Apparel Error: " + new_store.errors[:mens_apparel].to_s # check if there is a apparel error

