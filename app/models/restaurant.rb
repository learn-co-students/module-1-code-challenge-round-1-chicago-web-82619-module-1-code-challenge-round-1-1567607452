class Restaurant
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def all_reviews
        #All reviews for current restaurant
        all_reviews = Review.all.select {|review| review.restaurant == self}
    end

    def customers
        #Collecting all names of customers who left the review for current restaurant
        all_reviews.collect {|review| review.customer}
    end

    def average_star_rating
        all_ratings = all_reviews.collect {|review| review.rating}
        all_ratings.reduce(:+)/all_ratings.size
    end

    def longest_review
        all_reviews.collect {|review| review.review}.max_by(&:length)
    end

    def self.find_by_name(name)
        Restaurant.all.find {|restaurant| restaurant.name == name}
    end
end
