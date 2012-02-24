class CreateValidadorPorServicios < ActiveRecord::Migration
  def change
    create_table :validador_por_servicios do |t|
      t.references :service
      t.references :validador

      t.timestamps
    end
    add_index :validador_por_servicios, :service_id
    add_index :validador_por_servicios, :validador_id
  end
end
