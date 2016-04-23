class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :tier
      t.string :team_abbreviation

      t.timestamps null: false
    end
  end
end
