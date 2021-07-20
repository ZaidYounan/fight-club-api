class Fight < ApplicationRecord
  belongs_to :boxer_a
  belongs_to :boxer_b
  belongs_to :coach
  belongs_to :winner
  belongs_to :loser
  belongs_to :gym
end
