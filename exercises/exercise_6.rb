require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...#

class Employee < ActiveRecord::Base
  belongs_to :store
  validates! :first_name, presence: true
  validates! :last_name, presence: true
  validates! :store_id, presence: true
  validates! :hourly_rate, inclusion: { in: 40..200 }
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store2.employees.create(first_name: "Nick", last_name: "Matallo", hourly_rate: 100)
@store1.employees.create(first_name: "Lorenzo", last_name: "Doyce", hourly_rate: 50)
@store1.employees.create(first_name: "Billy", last_name: "Jean", hourly_rate: 45)
@store2.employees.create(first_name: "JJ", last_name: "Abrahms", hourly_rate: 70)