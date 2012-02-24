class Operador < ActiveRecord::Base  

	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  	attr_accessible :login, :password
	has_many :operador_por_servicios
    has_many :services , :through => :operador_por_servicios
end
