class Console < ApplicationRecord
    has_and_belongs_to_many :game_systems
    has_many :games, through: :game_systems
end
