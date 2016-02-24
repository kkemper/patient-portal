class Coverage < ActiveRecord::Base
	has_many :patients
	has_many :insurances
end
