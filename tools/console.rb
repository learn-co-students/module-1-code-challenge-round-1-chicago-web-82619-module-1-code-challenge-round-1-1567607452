require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

zac = Customer.new("zac", "steinberg")
luke = Customer.new("luke", "skywalker")
darth = Customer.new("darth", "vader")

starbucks = Restaurant.new("Starbucks")
chipotle = Restaurant.new("Chipotle")
lou_malnatis = Restaurant.new("Lou Malnati's")

zac.add_review(starbucks, "not a big coffee fan", 3)
zac.add_review(chipotle, "great food and not too expensive", 5)
zac.add_review(lou_malnatis, "great pizza", 4)
luke.add_review(lou_malnatis, "never had pizza like this before but it was delicious", 4)
darth.add_review(lou_malnatis, "don't like this, new york style all the way", 1)
darth.add_review(lou_malnatis, "went again and it's not so bad", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line