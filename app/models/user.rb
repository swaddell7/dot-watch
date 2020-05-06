class User < ApplicationRecord
    has_secure_password

    has_many :reviews
    has_many :screenplays, through: :reviews
    # user.likes is the number of likes a user has left on reviews
    has_many :likes
    # user.review_likes is the number of likes a user has received on the reviews they've written
    has_many :review_likes, through: :reviews, source: :likes

    validates_presence_of :name, :username
    validates_presence_of :password, :password_confirmation, on: :new
    validates_uniqueness_of :username
    

    def most_popular_review
        reviews.max do |a, b|
            a.likes.count <=> b.likes.count
        end
    end

    def reviews_count
        self.reviews.count
    end

    def shorter_bio
      if self.bio
        short_bio = self.bio.split(' ')
        short_bio.take(7).join(' ')
      end 
    end
    
    # def likes_count
    #     review.likes.count
    # end

    def user_badge
      if self.review_likes.count < 4
        "Newbie"
      elsif self.review_likes.count > 4 && self.review_likes.count < 9 
        "Film Critic"
      elsif self.review_likes.count > 9 
        "Uber Fan Girl Magnet"
      end 
    end 
end
