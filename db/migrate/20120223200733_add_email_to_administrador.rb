class AddEmailToAdministrador < ActiveRecord::Migration
  def change
    add_column :administradors, :email, :string

  end
end
