class Fight < ApplicationRecord
  belongs_to :boxer_a, class_name: "Boxer"
  belongs_to :boxer_b, class_name: "Boxer"
  belongs_to :winner, class_name: "Boxer"
  belongs_to :loser, class_name: "Boxer"
end
