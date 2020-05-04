class Screenplay < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :screenplay_genres
    has_many :genres, through: :screenplay_genres
end
