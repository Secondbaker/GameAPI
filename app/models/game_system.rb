class GameSystem < ApplicationRecord
    has_and_belongs_to_many :consoles
    has_and_belongs_to_many :titles
end
