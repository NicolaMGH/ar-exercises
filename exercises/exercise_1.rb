require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


class Store < ActiveRecord::Base
  has_many :employees
  validates! :name, presence: true
  validates! :name, length: { minimum: 3,
    too_short: "%{count} characters is below minimum allowed" }, uniqueness: true
  validates! :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :apparel_check

  def apparel_check
    if womens_apparel == false && mens_apparel == false
      errors.add("Store must contain mens and/or womans apparel. Currently both mens_apparel and womens_apparel is false.")
    end
  end
end

Store.create!(name: "Burnaby", annual_revenue:"300000", mens_apparel: true, womens_apparel: true)
Store.create!(name: "Richmond", annual_revenue:"1260000", mens_apparel: false, womens_apparel: true)
Store.create!(name: "Gastown", annual_revenue:"190000", mens_apparel: true, womens_apparel: false)

Store.count