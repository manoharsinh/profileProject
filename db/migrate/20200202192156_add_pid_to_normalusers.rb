class AddPidToNormalusers < ActiveRecord::Migration[6.0]
  def change
    add_column :normalusers, :pid, :integer
  end
end
