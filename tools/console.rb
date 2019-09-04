require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

hax = Restaurant.new("Hax")
niub = Restaurant.new("Niu B")


carla = Customer.new("Carla", "Andrade")
carla2 = Customer.new("Carla", "Kelly")
aaron = Customer.new("Aaron", "Baer")

review1 = Review.new(hax, aaron, "worse", 3)

carla.add_review(hax, "bad", 3)
carla.add_review(niub, "great food!", 9)
carla.add_review(niub, "better", 10)
aaron.add_review(niub, "good", 8)
carla2.add_review(hax, "not good", 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line