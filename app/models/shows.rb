class Show < ActiveRecord::Base

    def self.highest_rating 
        Show.maximum("rating")
    end

    # returns the tv show w/ highest rating
    def self.most_popular_show 
        Show.order(rating: :desc).first
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        Show.order(rating: :asc).first
    end

    # returns the sum of all ratings of the tv shows
    def self.ratings_sum
        Show.sum("rating")
    end

    # returns an array of shows with rating >5
    def self.popular_shows
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :asc)
    end

end