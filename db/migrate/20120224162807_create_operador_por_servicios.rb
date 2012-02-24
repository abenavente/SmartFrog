class CreateOperadorPorServicios < ActiveRecord::Migration
  def change
    create_table :operador_por_servicios do |t|
      t.references :service
      t.references :operador
      t.timestamps
    end
    add_index :operador_por_servicios, :service_id
    add_index :operador_por_servicios, :operador_id
  end
end
