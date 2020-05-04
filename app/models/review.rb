class Review < ApplicationRecord
    belongs_to :user
    belongs_to :screenplay
    has_many :likes
end
