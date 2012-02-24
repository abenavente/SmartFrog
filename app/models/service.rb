class Service < ActiveRecord::Base
  belongs_to :customer
  has_many :campaings
  has_many :carteras, :through => :campaings
  has_many :supervisor_por_servicios
  has_many :supervisors, :through => :supervisor_por_servicio s
  has_many :operador_por_servicios
  has_many :operadors , :through => :operador_por_servicios
  has_many :validador_por_servicios
  has_many :validadors , :through => :validador_por_servicios
  
end
