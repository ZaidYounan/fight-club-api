class Boxer < ApplicationRecord
  has_one_attached :avatar
  belongs_to :gym

    # sets the boxer as boxer_a in fight table
    has_many :fights_as_boxer_a, class_name: "Fight", foreign_key: "boxer_a_id"
  
    # sets the boxer as boxer_b in fight table
    has_many :_fights_as_boxer_b, class_name: "Fight", foreign_key: "boxer_b_id"
    
    # sets the boxer as winner in fight table
    has_many :fights_as_winner, class_name: "Fight", foreign_key: "winner_id"
    
    # sets the boxer as loser in fight table
    has_many :fights_as_loser, class_name: "Fight", foreign_key: "loser_id"
  
end
