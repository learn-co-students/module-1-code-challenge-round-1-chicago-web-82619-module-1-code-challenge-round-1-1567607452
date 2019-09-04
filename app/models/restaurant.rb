class Restaurant
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def customers
    customers = Review.all.select {|review| review.restaurant == self}
    customers.collect {|customer| customer.customer}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    ratings = reviews.collect {|review| review.rating}
    ratings.sum / ratings.count
  end

  def longest_review
    contents = reviews.collect {|review| review.content}
    contents.max_by {|content| content.length}
  end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

end
