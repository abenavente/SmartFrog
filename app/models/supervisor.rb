class Supervisor < ActiveRecord::Base
devise :database_authenticatable, :timeoutable
end
