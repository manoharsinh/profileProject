class FixTypeName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :normalusers, :type, :accounttype
  end
end
