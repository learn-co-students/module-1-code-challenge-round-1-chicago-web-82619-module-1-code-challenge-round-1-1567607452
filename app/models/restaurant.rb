class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    #return all restaurant objects
    @@all
  end
  def reviews
    #go into the array of all the review objects
    #create a new array of the resturant objects where the resturant variable of reviews refer to this object
    #return array
    Review.all.select{|obj| obj.restaurant == self}
  end
  def customers
    #find an array of all the review objects that refer to this restaurant
    #then create a new array of all customer variable of all those objects
    #return all uniq values in the array
    reviews.map{|obj| obj.customer}.uniq
  end
  def average_star_rating
    #find all the reviews for restaurant
    #add together all the ratings together
    #divide the sum by the amount of reviews 
    #return value
    reviews.map{|obj| obj.rating}.sum / reviews.count  
  end
  def longest_review
    #sort all of the reviews of this restaurant by how long there content
    #get the obj with the longest content 
    #extract the content
    #return content
    reviews.sort_by{|obj| obj.content}.last.content
  end
  def self.find_by_name(name)
    #go into the array of all restaurants
    #then find first object where the name varaible is equal to passed string
    #return object
    all.find{|obj| obj.name == name}
  end
end
