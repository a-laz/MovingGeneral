class Mover < ApplicationRecord
    has_many :crew_movers
    has_many :crews, through: :crew_movers
end