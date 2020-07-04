class Show < ActiveRecord::Base
    def self.highest_rating 
        # this method should return the highest value in the ratings column
        Show.maximum(:rating)
    end

    def self.most_popular_show
        #  this method should return the show with the highest rating
        Show.order(:rating).last
        # This is probably in descending order
    end

    def self.lowest_rating
       
        Show.minimum(:rating)
    end
    
    def self.least_popular_show
         # returns the tv show with the lowest rating
        Show.order(:rating).first
         # This is probably in ascending order
    end

    def self.ratings_sum
        Show.sum(:rating)
    end 

    def self.popular_shows
        Show.where("rating > ?", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end