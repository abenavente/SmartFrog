class CreateOperadors < ActiveRecord::Migration
  def change
    create_table :operadors do |t|
      t.string :name
      t.string :password
      t.string :dni
      t.string :login
      t.integer :estado

      t.timestamps
    end
  end
end
