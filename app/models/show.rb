class Show < ActiveRecord::Base
    validates :name, uniqueness: true
    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        find_by(rating: highest_rating)
    end

    def self.lowest_rating
        minimum(:rating)
    end

    def self.least_popular_show
        find_by(rating: lowest_rating)
    end

    def self.ratings_sum
        sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > 5").order(rating: :desc)
    end 

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end
