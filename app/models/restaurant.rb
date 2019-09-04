class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# class methods
  def self.all
    @@all
  end

  def self.find_by_name(name)
    # case insensitive assuming english char set used
    all.find {|restaurant| restaurant.name.downcase == name.downcase}
  end

# instance methods
  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.collect {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.collect { |review| review.rating }
# passing in block to find mean of ratings array
# argument passed in forces a float return value
    ratings.sum(0.0) {|rating| rating.to_f / ratings.count.to_f}
  end

  def longest_review
    reviews.max {|a,b| a.content.length <=> b.content.length}
  end



end
