class CreateFights < ActiveRecord::Migration[6.1]
  def change
    create_table :fights do |t|
      t.references :boxer_a, null: false, foreign_key: { to_table: :boxers }
      t.references :boxer_b, null: false, foreign_key: { to_table: :boxers }
      t.references :coach, null: false, foreign_key: true
      t.datetime :time_scheduled
      t.integer :rounds
      t.integer :round_time
      t.references :winner, null: false, foreign_key: { to_table: :boxers }
      t.references :loser, null: false, foreign_key: { to_table: :boxers }
      t.string :result
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
