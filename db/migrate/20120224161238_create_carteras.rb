class CreateCarteras < ActiveRecord::Migration
  def change
    create_table :carteras do |t|
      t.string :name
      t.references :campaing
      t.integer :registros
      t.date :fecha_carga

      t.timestamps
    end
    add_index :carteras, :campaing_id
  end
end
