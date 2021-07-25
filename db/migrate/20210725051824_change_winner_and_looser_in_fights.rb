class ChangeWinnerAndLooserInFights < ActiveRecord::Migration[6.1]
  def change
    change_column :fights, :winner_id, :bigint, null:true
    change_column :fights, :loser_id, :bigint, null:true
  end
end
