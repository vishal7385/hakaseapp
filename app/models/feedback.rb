class Feedback < ApplicationRecord
    belongs_to :post
    has_many :poly_comments, as: :commentable
end
