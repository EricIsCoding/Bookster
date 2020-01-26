class User < ApplicationRecord
    has_many :bookusers
    has_many :books, through: :bookusers
    has_many :reviews
    
end
