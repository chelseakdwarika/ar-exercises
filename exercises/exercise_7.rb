require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#VALIDATION
#Employees must have a FIRST and LAST name, hourly_rate(integer between 40-200), belong to a store
#STORES have a name with min 3 chars, annual_revenue(integer >= 0)

#Ask user for store name and put into a variable
#Create error testing store with that name ^ but leave out other criteria and store error messages

puts "NAME OUR NEW STORE! >>"
store_name = gets.chomp
store_new = Store.create(name: store_name, annual_revenue: 100000, mens_apparel: true, womens_apparel: true)

if store_new.invalid?
  store_new.errors.full_messages.each do |error|
    puts error
  end
  puts store_new.valid?
end