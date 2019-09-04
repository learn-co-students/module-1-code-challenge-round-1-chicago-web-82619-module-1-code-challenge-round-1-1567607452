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
    Review.new(restaurant, self, content, rating)
  end

  def selected_customer
    cust = Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    selected_customer.count
  end

  def restaurants
    selected_customer.map {|customer| customer.restaurant}.uniq
  end

  def self.find_by_name(first_name, last_name)
    self.all.find {|customer| customer.first_name}
  end

  def self.find_all_by_first_name(first_name)
    self.all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.first_name}
  end



end
