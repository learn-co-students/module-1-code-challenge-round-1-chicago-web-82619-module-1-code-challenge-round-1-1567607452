require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer = Customer.new("Justice", "Marks")
restaurant = Restaurant.new("Indie Cafe")
customer2 = Customer.new("Sean", "Bailey")
restaurant2 = Restaurant.new("Big Chicks")
customer3 = Customer.new("Justice", "Banks")

review_copy = "pretty good pot roast!"
review_copy2 = "Pot roat panang! Yum yum"
review_copy3 = "good drinks, $1 burger"

customer.add_review(restaurant, review_copy, 4)
customer2.add_review(restaurant, review_copy2, 5)
customer.add_review(restaurant2, review_copy3, 4)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
