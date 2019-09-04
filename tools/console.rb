require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
aaron_blum = Customer.new('aaron', 'blum')
mae_rice = Customer.new('mae', 'rice')
dan_blum = Customer.new('dan', 'blum')
michael_cohen = Customer.new('michael', 'cohen')

#restaurants
reno = Restaurant.new('reno')
big_star = Restaurant.new('big star')
papas = Restaurant.new('papas')
fat_rice = Restaurant.new('fat rice')

#reviews
mae_fat = Review.new(mae_rice, fat_rice, "it was the best place ever", 5)
mae_fat2 = Review.new(mae_rice, fat_rice, "this time i didn't like it that much", 1)
aaron_reno = Review.new(aaron_blum, reno, "even though my girlfriend likes this place, i can't eat here every day. but they have great brunch", 2)
mae_reno = Review.new(mae_rice, reno, "I come here every day", 4)
dan_fat = Review.new(dan_blum, fat_rice, "what a wonderful way to spend the weekend.", 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line