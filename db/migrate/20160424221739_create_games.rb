class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :score_for
      t.integer :score_against
      t.integer :home_team_id
      t.integer :away_team_id
      t.string :game_diamond 

      t.timestamps null: false
    end
  end
end
