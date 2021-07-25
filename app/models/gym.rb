class Gym < ApplicationRecord
    has_many :fights
    has_many :boxers
end
