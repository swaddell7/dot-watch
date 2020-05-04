class User < ApplicationRecord
    has_many :reviews
    has_many :screenplays, through: :reviews
    has_many :given_likes, source: :likes
    has_many :likes, through: :reviews
end
