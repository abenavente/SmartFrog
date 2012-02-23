class Validador < ActiveRecord::Base
devise :database_authenticatable, :timeoutable
end
