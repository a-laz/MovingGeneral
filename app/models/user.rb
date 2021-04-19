class User < ApplicationRecord
    has_secure_password
    has_many :moves
    has_many :crews, through: :moves
end