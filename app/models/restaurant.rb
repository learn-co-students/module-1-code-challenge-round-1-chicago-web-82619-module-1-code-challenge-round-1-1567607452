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
    review_arr = reviews.map {|review| review.rating}
    review_arr.reduce(:+)/review_arr.count
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def longest_review
    reviews.map {|review| review.content}.max_by(&:length)
  end

end
