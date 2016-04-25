class ChangeNameDataToStat < ActiveRecord::Migration
  def change
    rename_table :data, :stats
  end
end
