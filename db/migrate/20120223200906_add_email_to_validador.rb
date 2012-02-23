class AddEmailToValidador < ActiveRecord::Migration
  def change
    add_column :validadors, :email, :string

  end
end
