class User < ApplicationRecord
has_many :bets
has_many :games, through: :bets

end
