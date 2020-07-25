class Title < ApplicationRecord
    has_and_belongs_to_many :game_systems
  has_many :consoles, through: :game_systems
  has_and_belongs_to_many :games
end
