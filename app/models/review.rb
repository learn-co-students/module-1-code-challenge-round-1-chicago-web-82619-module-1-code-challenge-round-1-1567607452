class Review
  attr_accessor :content, :rating

  attr_reader :customer, :restaurant

  @@all = []

  def initialize(restaurant, customer, content, rating)
      @restaurant = restaurant
      @customer = customer 
      @content = content
      @rating = valid_rating?(rating)
      @@all << self
  end

  # check to see if the rating is between 1-5
  def valid_rating?(rating)
      if rating.between?(1,5)
      rating
      else  
        nil
        "You can only rate 1 through 5 starts"
      end
  end

  def self.all
    @@all
  end

  
end

 