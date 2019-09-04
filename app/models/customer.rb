class Customer
  @@all = []
  attr_reader :first_name, :last_name

  # Initializes a Customer with a first_name and a last_name.
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  # Returns the full name of a Customer as a string.
  def full_name
    "#{first_name} #{last_name}"
  end

  # Creates a Review with a Restaurant, self, content, and rating.
  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  # Returns a list of all of the Reviews this Customer has authored.
  def reviews
    Review.all.select {|review| review.customer == self}
  end

  # Returns a list of all of the unique Restaurants this Customer has reviewed.
  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  # Returns the number of Reviews this Customer has authored.
  def num_reviews
    reviews.count
  end

  # Returns a list of all Customer objects.
  def self.all
    @@all
  end

  # Returns the first instance of Customer whose name matches name.
  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name}
  end

  # Returns all Customers who share name.
  def self.find_all_by_first_name(name)
    all.select {|customer| customer.first_name == name}
  end

  # Returns a list of all the Customers' full_names.
  def self.all_names
    all.map {|customer| customer.full_name}
  end
end
