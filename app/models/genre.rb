class Genre < ApplicationRecord
    has_many :screenplay_genres
    has_many :screenplays, through: :screenplay_genres
end
