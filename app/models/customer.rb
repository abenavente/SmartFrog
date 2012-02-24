class Customer < ActiveRecord::Base
	has_many :services
end
