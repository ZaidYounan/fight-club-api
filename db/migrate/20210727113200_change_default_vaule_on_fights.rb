class ChangeDefaultVauleOnFights < ActiveRecord::Migration[6.1]
  def change
    change_column :fights, :winner_id, :bigint, :default => "", null:true
    change_column :fights, :loser_id, :bigint, :default => "", null:true

  end
end
