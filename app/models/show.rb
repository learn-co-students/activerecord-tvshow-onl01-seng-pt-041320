class Show < ActiveRecord::Base
    def Show::highest_rating
        Show.maximum("rating")
    end

    def Show::most_popular_show
        Show.select("id, name, network, day, MAX(rating), seasons, season").first
    end
end