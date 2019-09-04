class Review
  @@all = []
  attr_reader :restaurant, :customer, :rating, :content

  # Initializes a Review object with a Restaurant, a Customer, a rating, and content.
  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = min(5, max(1, rating))
    @@all << self
  end

  # Returns a list of all Review objects.
  def self.all
    @@all
  end

  # helper methods
  def max(a, b)
    a > b ? a : b
  end

  def min(a, b)
    a < b ? a : b
  end
end

