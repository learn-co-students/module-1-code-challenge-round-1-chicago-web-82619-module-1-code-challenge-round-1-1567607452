class Customer
  attr_reader :first_name, :last_name
  @@all = [] #store all customers
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self #store object in all array
  end
  def self.all # return array of all objects
    @@all
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def add_review(restaurant, content, rating) #add review using params
    Review.new(self, restaurant, content, rating) #refer to self as customer object in review
  end
  def reviews
    #enters array of all Review objects that exist 
    #if there customer refers to this customer put into new array
    #return new array
    Review.all.select{|obj| obj.customer == self}
  end
  def num_reviews
    #how big is the array that holds reviews that refer to this customer
    reviews.count
  end
  def restaurants
    #find all the reviews that refer to this customer
    #then from that array create a new array of just restaurant variable of those review objects
    #return all the uniq restaurant objects
    reviews.map{|obj| obj.restaurant}.uniq
  end
  def self.find_by_name(name)
    #in all of the customer objects where does the full name method equal the passed string
    all.find{|obj| obj.full_name == name}
  end
  def self.find_all_by_first_name(name)
    #in all of the customer objects where does the passed string equal the first_name class variable 
    all.select{|obj| obj.first_name == name}
  end
  def self.all_names
    #go through every customer object
    #create a new array of all the full names by calling the full_name method
    #return array
    all.map{|obj| obj.full_name}
  end
end
