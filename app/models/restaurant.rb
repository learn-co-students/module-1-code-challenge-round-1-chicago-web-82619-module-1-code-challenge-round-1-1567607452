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

  def select_restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    select_restaurant.map {|review| review.customer.first_name}.uniq
  end

  def reviews
    select_restaurant.map {|review| review.content}
  end

  def average_star_rating
    rate = select_restaurant.map {|review| review.rating}
    rate.reduce(:+) / rate.count
  end

  def longest_review
    count = select_restaurant.map {|review| review.content}
    count.sort[-1]
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end
end
