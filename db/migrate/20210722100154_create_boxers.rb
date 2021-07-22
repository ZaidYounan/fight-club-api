class CreateBoxers < ActiveRecord::Migration[6.1]
  def change
    create_table :boxers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :height
      t.integer :weight
      t.integer :reach
      t.string :stance
      t.references :gym, null: false, foreign_key: true

      t.timestamps
    end
  end
end
