class Review
  attr_reader :customer, :restaurant, :content, :rating
  attr_writer :content, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    self.class.all << self
    end
end

