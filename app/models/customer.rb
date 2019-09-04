class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.collect {|review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
    @@all.find {|customer| customer.full_name == name}

  end

  def self.find_all_by_first_name(name)
    @@all.find {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.collect {|customer| customer.full_name}
  end

end
