class Review
  @@all = []
  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  def initialize(customer, restaurant, content, rating)

    if rating > 0 && rating <=5
      @customer = customer
      @restaurant = restaurant
      @content = content
      @rating = rating
      @@all << self
    else
      # error handling so review can only be
      # instantiated with a rating value between 1-5
      raise ArgumentError.new("Rating must be between 1-5 stars")
    end

  end

  def self.all
    @@all
  end

end
