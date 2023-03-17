require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

#Load the third store (into @store3) as you did the other two before.
@store3 = Store.find_by(id: 3)

#Using Active Record's destroy method, delete the store from the database.
@store3.destroy

#Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)
puts "NEW STORE COUNT: #{Store.count}" 
