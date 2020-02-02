class AddIndexToNormalUsersEmail < ActiveRecord::Migration[6.0]
  def change
  	  	add_index :normalusers, :email
  	  	add_index :normalusers, :created_at
  end
end
