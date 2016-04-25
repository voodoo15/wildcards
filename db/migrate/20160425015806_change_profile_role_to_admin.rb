class ChangeProfileRoleToAdmin < ActiveRecord::Migration
  def change
      remove_column :profiles, :role
      add_column :profiles, :admin, :boolean, default: false
  end
end
