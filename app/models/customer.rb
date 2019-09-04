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

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews 
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def self.find_by_name(name)
    #obtain first and last name give a full name string formatted like "Firstname Lastname"
    first = name.split(" ").first
    last = name.split(" ").last
    #create an array of customers with matching first names
    first_arr = Customer.all.select {|customer| customer.first_name == first}
    #find first customer with matching last name
    first_arr.find {|customer| customer.last_name == last}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map {|customer| customer.first_name + " " + customer.last_name}
  end

end
