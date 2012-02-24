class CreateSupervisorPorServicios < ActiveRecord::Migration
  def change
    create_table :supervisor_por_servicios do |t|
      t.references :service
      t.references :supervisor

      t.timestamps
    end
    add_index :supervisor_por_servicios, :service_id
    add_index :supervisor_por_servicios, :supervisor_id
  end
end
