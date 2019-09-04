require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customers
joseph = Customer.new("Joseph", "Gansukh")
tiffany = Customer.new("Tiffany", "Eng")
joe = Customer.new("Joseph", "Gordon")

# Restaurants
ricobenes = Restaurant.new("Ricobene's")
chipotle = Restaurant.new("Chipotle")
mastros = Restaurant.new("Mastro's Steakhouse")
fogo = Restaurant.new("Fogo de Chao")

# Reviews

joseph.add_review(ricobenes, "Saw the reviews about the breaded steak sandwich so decided to give it a try. It was good, but not sure it was great.", 3)
tiffany.add_review(ricobenes, "The Chicken visuvio sandwich is one of the best in the city of Chicago. And don't forget the French Fries!!! WOW!!!", 5)
joseph.add_review(fogo, "I have visited this establishment on several occasions, and I am never disappointed with the high level of service and GREAT food. From the moment you step in the door, you are greeted and treated like royalty. The food options are great and the servers go out of their way to make sure your experience is a memorable one.", 5)
tiffany.add_review(fogo, "Excellent place to go eat with the family, service was good so was the salad bar, I highly recommend the filet mignon.", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line