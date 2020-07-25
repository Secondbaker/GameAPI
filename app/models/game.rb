class Game < ApplicationRecord
  has_and_belongs_to_many :titles
  has_many :game_systems, through: :titles
  has_many :consoles, through: :game_systems
end
