class Administrador < ActiveRecord::Base
devise :database_authenticatable, :timeoutable ,:timeout_in => 2.minutes
end
