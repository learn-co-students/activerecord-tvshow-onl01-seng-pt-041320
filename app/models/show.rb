require 'pry'

class Show < ActiveRecord::Base

    ## This method should return the highest value in the ratings column
    def Show::highest_rating
        Show.maximum("rating")
    end

    ## This method should return the show with the highest rating
    def Show::most_popular_show
        #Show.where("rating = ?", highest_rating)
        Show.order(rating: :desc).first
    end

    ## Returns the lowest value in the ratings column.
    def Show::lowest_rating
        Show.minimum("rating")

    end

    ## Returns the show with the lowest rating.
    def Show::least_popular_show
        Show.order("rating").first
    end

    ## Returns the sum of all of the ratings.
    def Show::ratings_sum
        Show.sum("rating")

    end

    ## Returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
    def Show::popular_shows
        Show.where("rating > ?", 5)
    end

    ## Returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
    def Show::shows_by_alphabetical_order
        Show.order(name: :asc)
    end


end