class AddEmailToSupervisor < ActiveRecord::Migration
  def change
    add_column :supervisors, :email, :string

  end
end
