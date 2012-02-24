class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :customer
      t.string :name

      t.timestamps
    end
    add_index :services, :customer_id
  end
end
