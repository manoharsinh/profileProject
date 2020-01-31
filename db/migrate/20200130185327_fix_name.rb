class FixName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :admins, :name, :email
  end
end
