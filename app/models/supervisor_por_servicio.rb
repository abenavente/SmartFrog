class SupervisorPorServicio < ActiveRecord::Base
  belongs_to :service
  belongs_to :supervisor
end
