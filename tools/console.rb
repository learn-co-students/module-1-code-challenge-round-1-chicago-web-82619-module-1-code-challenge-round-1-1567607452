require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

parasushi = Restaurant.new("Para Sushi")
redlobster = Restaurant.new("Red Lobster")
paris = Restaurant.new("Paris")

customer1 = Customer.new("Andrew", "Riznyk")
customer2 = Customer.new("Bogdan", "Kovalyk")
customer3 = Customer.new("Ivan", "Yaremchuck")
customer4 = Customer.new("Igor", "Lenyk")
customer5 = Customer.new("Lyubomyr", "Suharyna")

review1 = Review.new(parasushi, customer2, "Very good sushi", 4)
review2 = Review.new(redlobster, customer1, "Nice atmosphere", 5)
review3 = Review.new(paris, customer5, "Good food", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line