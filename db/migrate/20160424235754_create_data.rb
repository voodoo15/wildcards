class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.integer :plate_app
      t.integer :at_bat
      t.integer :first_base
      t.integer :second_base
      t.integer :third_base
      t.integer :homerun
      t.integer :hit
      t.integer :rbi
      t.integer :run
      t.integer :walk
      t.integer :strikeout
      t.integer :sac_fly
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
