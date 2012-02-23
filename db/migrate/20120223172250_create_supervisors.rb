class CreateSupervisors < ActiveRecord::Migration
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :password
      t.string :dni
      t.string :login
      t.integer :estado
      t.string :encrypted_password

      t.timestamps
    end
  end
end
