require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store # each employee belongs to a store
  validates :first_name, :last_name, :hourly_rate, :store, presence: true # validates that all these fields are required
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 } # hourly rate has to be an integer and between 40 and 200

  # enables object encapsulation otherwise can be called from outside the model
  private
  # if we used after_create, the function would not have ran before we have to print the password, giving us an error
  #if we used before_save, there is no error as the password is still made before the new employee is saved to DB
  before_save do # callback for before creating class

      def add_password(number) # function that can generate random 8 string
        charset = Array('A'..'Z') + Array('a'..'z')
        Array.new(number) { charset.sample }.join
      end

      self.password = add_password(8) # assign password with this function result
  end

end

# create new employee
@store1.employees.create(first_name: "Anna", last_name: "Hathaway", hourly_rate: 100)
# find the newly made employee and save in variable
@employee_new = Employee.where("first_name = ? AND last_name = ?", "Anna", "Hathaway")
# loop through new employee and print name and password (should only be one but can catch cases of same name employees)
@employee_new.each do |employee|
  p "First Name: " + employee.first_name + ", Password: " + employee.password
end