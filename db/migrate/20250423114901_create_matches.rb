class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.string :result
      t.integer :score_team1
      t.integer :score_team2
      t.datetime :date

      t.timestamps
    end
  end
end
