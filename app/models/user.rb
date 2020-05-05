class User < ApplicationRecord
    has_many :reviews
    has_many :screenplays, through: :reviews
    # user.likes is the number of likes a user has left on reviews
    has_many :likes
    # user.review_likes is the number of likes a user has received on the reviews they've written
    has_many :review_likes, through: :reviews, source: :likes

    def most_popular_review
        reviews.max do |a, b|
            a.likes.count <=> b.likes.count
        end
    end

    def reviews_count
        self.reviews.count
    end

    def shorter_bio
        short_bio = self.bio.split(' ')
        short_bio.take(7).join(' ')
    end
    
    def likes_count
        review.likes.count
    end
end
