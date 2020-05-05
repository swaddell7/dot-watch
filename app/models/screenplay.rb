class Screenplay < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :screenplay_genres
    has_many :genres, through: :screenplay_genres

    # helper method - finds the average rating for a screenplay. Returns 0 if there are no reviews
    def average_rating
        if reviews.count > 0
            ratings = reviews.map { |review| review.rating }
            sum = ratings.reduce(:+)
            if sum > 0
                average = sum / ratings.count
                average.round(1)
            else
                return 0
            end
        else
            return 0
        end
    end

    #class method, creates a sorted array of all screenplays and their average review
    def self.screenplays_by_rating
        hash = {}
        Screenplay.all.each do |screen|
            hash[screen] = screen.average_rating
        end
        hash.sort_by { |screen, av_review| -av_review }
    end
end
