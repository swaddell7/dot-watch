class Like < ApplicationRecord
    belongs_to :user
    belongs_to :review

    validates_presence_of :user_id, :review_id
end
