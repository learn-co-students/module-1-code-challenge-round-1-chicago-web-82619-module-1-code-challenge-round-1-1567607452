require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joe = Customer.new("Joe", "Biden")
kamala = Customer.new("Kamala", "Harris")
joe2 = Customer.new("Joe", "Biden")
joe3 = Customer.new("Joe", "Adamski")

ind = Restaurant.new("Indian Harvest")
chip = Restaurant.new("Chipotle")
crab = Restaurant.new("Bag o' Crab")
crab2 = Restaurant.new("Bag o' Crab")

r1 = Review.new(ind, kamala, 'yuck', 1)
r2 = Review.new(ind, joe, 'nice', 4)
r3 = Review.new(ind, joe3, 'acceptable', 3)
kamala.add_review(crab, 'i love it', 5)
joe2.add_review(chip, 'my go-to for comfort food', 4)
joe.add_review(crab, 'simply delectable', 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line