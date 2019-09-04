require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#instantiate restaurants and customers
r1 = Restaurant.new("McDonalds")
r2 = Restaurant.new("Burger King")
c1 = Customer.new("Joe", "Biden")
c2 = Customer.new("Jane", "Boden")
c3 = Customer.new("Joe", "Budden")
c4 = Customer.new("Hobert", "Lobert")

#create reviews to test on
c1.add_review(r1, 5, "I enjoyed this restaurant")
c1.add_review(r2, 4, "Not as good as the other place")
c2.add_review(r1, 1, "I did not enjoy this restaurant at all")
c3.add_review(r1, 1, "beese churger")
c4.add_review(r1, 1, "NO FREE REFILLS how dare you Ronald")

#using this to test review instance methods specifically
rw1 = Review.new(c2, r2, 3, "Just okay")

binding.pry
0