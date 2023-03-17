require_relative '../setup'

puts "Exercise 1"
puts "----------"

#.create Burnaby (annual_revenue of 300000, carries men's and women's apparel)
@store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true);

#.create Richmond (annual_revenue of 1260000 carries women's apparel only)
@store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true);

#.create Gastown (annual_revenue of 190000 carries men's apparel only)
@store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false);

#puts @store1
#puts @store2
#puts @store3

#Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts "STORE COUNT: #{Store.count}" 
