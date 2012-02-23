class AddEncryptedPasswordToOperador < ActiveRecord::Migration
  def change
    add_column :operadors, :encrypted_password, :string

  end
end
