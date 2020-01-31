class CreateNormalusers < ActiveRecord::Migration[6.0]
  def change
    create_table :normalusers do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :type
      t.string :phonenumber
      t.string :status

      t.timestamps
    end
  end
end
