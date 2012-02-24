class Supervisor < ActiveRecord::Base
	devise :database_authenticatable, :timeoutable
	has_many :supervisor_por_servicios
	has_many :services, :through => :supervisor_por_servicios
end
