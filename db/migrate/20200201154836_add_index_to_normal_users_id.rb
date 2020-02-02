class AddIndexToNormalUsersId < ActiveRecord::Migration[6.0]
  def change
  	add_index :normalusers, :id
  end
end
