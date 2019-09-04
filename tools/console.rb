require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("Joe", "Johnson")
c2 = Customer.new("Joe", "Ingles")
c3 = Customer.new("Kyle", "Kuzma")
c4 = Customer.new("Donovan", "Mitchell")

r1 = Restaurant.new("Mcdonalds")
r2 = Restaurant.new("Taco Bell")
r3 = Restaurant.new("KFC")
r4 = Restaurant.new("Crab Shack")

review1 = Review.new(c1, r1, "It was good", 4)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line