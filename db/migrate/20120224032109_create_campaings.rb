class CreateCampaings < ActiveRecord::Migration
  def change
    create_table :campaings do |t|
      t.references :service
      t.string :name
      t.date :inicio
      t.date :fin

      t.timestamps
    end
    add_index :campaings, :service_id
  end
end
