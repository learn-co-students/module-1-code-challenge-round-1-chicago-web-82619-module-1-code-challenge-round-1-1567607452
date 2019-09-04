class Restaurant
  @@all = []
  attr_reader :name

  # Initializes a Restaurant object with a name.
  def initialize(name)
    @name = name
    @@all << self
  end

  # Returns a list of all Reviews this Restaurant has received.
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  # Returns a list of all Customers who have reviewed this Restaurant.
  def customers
    reviews.map {|review| review.customer}.uniq
  end

  # Returns the average rating this Restaurant has received.
  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    (ratings.sum/ratings.count.to_f).round(2)
  end

  # Returns the longest review content this Restaurant has received.
  def longest_review
    contents = reviews.map {|review| review.content}
    contents.max {|a, b| a.length <=> b.length}
  end

  # Returns a list of all Restaurant objects.
  def self.all
    @@all
  end

  # Returns the first Restaurant that has name. 
  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name == name}
  end
end
