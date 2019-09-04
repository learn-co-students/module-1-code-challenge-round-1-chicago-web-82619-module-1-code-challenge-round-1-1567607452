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
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    ratings.reduce(:+) / ratings.count
  end

  def longest_review
    reviews.max {|review_a, review_b| review_a.content.length <=> review_b.content.length}.content
  end

  def self.find_by_names(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
end
 