class Genre < ApplicationRecord
    has_many :bookgenres, dependent: :destroy
    has_many :books, through: :bookgenres
    
end
