class Review

    attr_reader :content, :rating, :restaurant, :customer
    @@all = []
    
    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def self.customer
        self.all.select {|review| review.customer}
    end

    def self.restaurant
        self.all.select {|review| review.restaurant}
    end

    # def self.rating(restaurant)
    #     avg = self.all.select {|review| review.restaurant == restaurant}
    #     # avg.reduce(:+) / avg.count
    # end

end

