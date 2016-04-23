class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :team_id
      t.integer :team_number
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :role
      t.string :phone_number
      t.string :throws
      t.string :bats

      t.timestamps null: false
    end
  end
end
