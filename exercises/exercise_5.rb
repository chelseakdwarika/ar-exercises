require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

#output total revenue for ALL stores using .sum
@total_revenue = Store.sum(:annual_revenue)
puts "ANNUAL REVENUE FROM ALL STORES: #{@total_revenue}"

#output average annual revenue for ALL stores
@total_revenue = Store.average(:annual_revenue)
puts "AVERAGE Annual Revenue: #{@total_revenue}"

#output count of stores with +$1M in annual sales
puts Store.where("annual_revenue > '1000000'").count()