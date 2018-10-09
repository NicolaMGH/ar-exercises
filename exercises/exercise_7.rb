require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ... #
puts "Enter store name."
print "> "
@name = gets.chomp

puts "Annual revenue."
print "> "
@annual_revenue = gets.chomp

puts "Does this store have mens apparel. Enter true if yes and false if no."
print "> "
@mens_apparel = gets.chomp

puts "Does this store have womans apparel. Enter true if yes and false if no."
print "> "
@womens_apparel = gets.chomp

begin
  Store.create(name: @name, annual_revenue: @annual_revenue, mens_apparel: @mens_apparel, womens_apparel: @womens_apparel)
rescue
  puts "#{$!}"
end