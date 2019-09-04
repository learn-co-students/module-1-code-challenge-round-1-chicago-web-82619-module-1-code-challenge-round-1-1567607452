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

    def add_review(restaurant, review, rating)
        Review.new(restaurant, self, review, rating)
    end

    def all_reviews
        #All reviews for current customer
        Review.all.select {|review| review.customer == self}
    end 

    def num_reviews
        all_reviews.size
    end

    def restaurants
        #Collecting just names of restaurants
        all_reviews.collect {|review| review.restaurant}.uniq
    end
    
    def self.find_by_name(name)
        name = name.split(" ")
        Customer.all.find{|customer| customer.first_name == name[0] && customer.last_name == name[1] }
    end 
    
    def self.find_all_by_first_name(name)
        Customer.all.select {|customer| customer.first_name == name}
    end
    
    def self.all_names
        Customer.all.collect {|customer| customer.full_name} 
    end
end
