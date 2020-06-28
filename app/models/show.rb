class Show < ActiveRecord::Base
    def Show::highest_rating
        Show.maximum("rating")
    end

    def Show::most_popular_show
        Show.select("id, name, network, day, MAX(rating), seasons, season").first
    end

    def Show::lowest_rating
        Show.minimum("rating")
    end

    def Show::least_popular_show
        Show.select("id, name, network, day, MIN(rating), seasons, season").first
    end

    def Show::ratings_sum
        Show.sum("rating")
    end

    def Show::popular_shows
        Show.where("rating > 5")
    end

    def Show::shows_by_alphabetical_order
        Show.order(name: :asc)
    end
end