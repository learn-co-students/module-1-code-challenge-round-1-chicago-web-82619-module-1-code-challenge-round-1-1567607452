class Review
    attr_reader :content, :rating, :customer, :restaurant #readers needed for methods in other classes
    @@all = []
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        #check if passed rating is within range if not set to either min or max based on what they surpassed
        if rating > 5
            @rating = 5
        elsif rating < 1
            @rating = 1
        else
            @rating = rating
        end
        @@all << self
    end
    def self.all
        #return all Review objects
        @@all
    end
end

