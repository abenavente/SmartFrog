class CreateAbonados < ActiveRecord::Migration
  

  def change

    create_table :abonados do |t|
      t.string :identificador
      t.string :cartera
      t.string :references
      t.references :campaing

      t.timestamps
    end
    add_index :abonados, :campaing_id
  end
end
