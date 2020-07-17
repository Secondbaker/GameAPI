class Game < ApplicationRecord
  has_and_belongs_to_many :compatible_consoles
  has_many :consoles, through: :compatible_consoles
end
