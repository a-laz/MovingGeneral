class Move < ApplicationRecord
    belongs_to :crew
    belongs_to :user
    has_one :review
    has_one :inventory_list
end