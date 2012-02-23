class CreateAdministradors < ActiveRecord::Migration
  def change
    create_table :administradors do |t|
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
