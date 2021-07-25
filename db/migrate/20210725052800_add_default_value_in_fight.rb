class AddDefaultValueInFight < ActiveRecord::Migration[6.1]
  def change
    change_column :fights, :winner_id, :bigint, :default => 0, null:true
    change_column :fights, :loser_id, :bigint, :default => 0, null:true
  end
end
