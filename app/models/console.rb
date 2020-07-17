class Console < ApplicationRecord
    has_and_belongs_to_many :compatible_consoles
    has_many :games, through: :compatible_consoles
end
