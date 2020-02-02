class AddForeignKeyToNormalusers < ActiveRecord::Migration[6.0]
  def change
  	add_foreign_key :normalusers, :normalusers, column: :pid, primary_key: "id"
  end
end
