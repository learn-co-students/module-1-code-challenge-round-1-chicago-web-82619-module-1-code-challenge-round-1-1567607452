class Review
    attr_accessor :restaurant, :customer, :rating, :review

    @@all = []

    def initialize(restaurant, customer, review = nil, rating = nil)
        @restaurant = restaurant
        @customer = customer
        @rating = rating
        @review = review
        @@all << self
    end

    def self.all
        @@all
    end

end

