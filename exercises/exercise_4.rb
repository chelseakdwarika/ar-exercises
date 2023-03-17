require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

#.create new store Surrey (annual_revenue of 224000, carries women's apparel only)
@store3 = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false);

#.create new store Whistler (annual_revenue of 1900000 carries men's apparel only)
@store4 = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)

#.create new store Yaletown (annual_revenue of 430000 carries men's and women's apparel)
@store5 = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

# use .where to return collection of only men's apparel stores into @mens_stores
@mens_stores = Store.where(mens_apparel: true)

#Loop through @mens_store and output their name and annual revenue
@mens_stores.all.each do |store|
  puts "MENS APPAREL | STORE NAME: #{store.name}, ANNUAL REVENUE: #{store.annual_revenue}"
end

#fetch women's apparel stores with less than $1M in annual revenue.
@womens_stores = Store.where(womens_apparel: true)

@womens_stores.all.each do |store|
  if store.annual_revenue < 1000000
  puts "WOMENS APPAREL | STORE NAME: #{store.name}, ANNUAL REVENUE: #{store.annual_revenue}"
end
end