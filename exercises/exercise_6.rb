require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

#Add the following code directly inside the Store model (class) (*under lib*): has_many :employees
#Add the following code directly inside the Employee model (class)(*under lib*): belongs_to :store

#Add some data into employees. Here's an example of one (note how it differs from how you create stores): 
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

#Create more employees under @store1 (Burnaby) and @store2 (Richmond).

@store1.employees.create(first_name: "Megan", last_name: "TheeStallion", hourly_rate: 90)
@store1.employees.create(first_name: "Cardi", last_name: "B", hourly_rate: 60)
@store1.employees.create(first_name: "Phoebe", last_name: "Bridgers", hourly_rate: 60)
@store2.employees.create(first_name: "Solana", last_name: "Sza", hourly_rate: 90)
@store2.employees.create(first_name: "Robyn", last_name: "Fenty", hourly_rate: 60)
@store2.employees.create(first_name: "Beyonce", last_name: "Knowles", hourly_rate: 60)
@store2.employees.create(first_name: "Ariana", last_name: "Grande", hourly_rate: 60)


