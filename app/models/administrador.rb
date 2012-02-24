class Administrador < ActiveRecord::Base
devise :database_authenticatable, :timeoutable 
end
