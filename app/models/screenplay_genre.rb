class ScreenplayGenre < ApplicationRecord
    belongs_to :screenplay
    belongs_to :genre
end
