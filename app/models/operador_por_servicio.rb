class OperadorPorServicio < ActiveRecord::Base
  belongs_to :service
  belongs_to :operador
end
