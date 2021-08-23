class Peak < ApplicationRecord
    belongs_to :game
    has_one :team
end
