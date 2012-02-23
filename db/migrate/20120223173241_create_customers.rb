class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
