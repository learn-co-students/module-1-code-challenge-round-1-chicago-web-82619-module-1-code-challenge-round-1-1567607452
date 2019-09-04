class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    # loop through and get all reviews for the customer
    # check length to get the total number of reviews
    Review.all.select { |review| review.customer == self }.length
  end

  def restaurants
    # loop through and get all reviews for the customer
    reviews = Review.all.select { |review| review.customer == self }
    # get all restaurants for the set - .uniq
    reviews.map { |review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
    #split name into first and last
    #loop through reviews and find first customer whose name matches
    full_name = name.split(" ")
    first_name = full_name[0]
    
  end

end
