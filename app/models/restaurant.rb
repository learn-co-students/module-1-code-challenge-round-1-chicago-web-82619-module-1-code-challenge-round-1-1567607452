class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    # call reviews method on self to get all reviews for the restaurant
    # return an array of all customers in the set - .uniq
    self.reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    # call reviews method on self to get all reviews for the restaurant
    # get array of all review ratings (integers) for the set
    # reduce the array to a single total
    # divide by length of all reviews array
    ratings = self.reviews.map { |review| review.rating }
    ratings.reduce(:+) / self.reviews.length
  end

  def longest_review
    # call reviews method on self to get all reviews for the restaurant
    # get array of all content in the set
    # count characters and return array with the longest number of characters
    content = self.reviews.map { |review| review.content }
    sorted = content.sort_by { |content| content.size }
    sorted.last
  end

end
