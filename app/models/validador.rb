class Validador < ActiveRecord::Base
devise :database_authenticatable, :timeoutable
  has_many :validador_por_servicios
  has_many :services , :through => :validador_por_servicios
  
end
