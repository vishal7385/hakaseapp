class Game < ApplicationRecord
    has_one :Peak
    has_one :team, through: :peak
end
