class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :contenido

      t.timestamps
    end
  end
end
