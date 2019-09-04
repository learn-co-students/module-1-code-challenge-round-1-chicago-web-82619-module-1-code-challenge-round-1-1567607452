class Review

    attr_reader :customer, :restaurant, :rating, :content
    @@all = []
  
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        #this ensures that "rating" is an integer
        rating.to_i
        #this ensures rating is an integer 1-5, if not we set the rating to 1
        if rating.between?(1,5)
            @rating = rating
        else 
            @rating = 1
        end
        
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

end

