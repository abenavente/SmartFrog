class AddEmailToOperador < ActiveRecord::Migration
  def change
    add_column :operadors, :email, :string

  end
end
