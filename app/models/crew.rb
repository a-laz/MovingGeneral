class Crew < ApplicationRecord
    has_many :moves
    has_many :users, through: :moves
    has_many :crew_movers
    has_many :movers, through: :crew_movers
end