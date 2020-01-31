class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :password
      t.string :password_digest
      t.string :string

      t.timestamps
    end
  end
end
