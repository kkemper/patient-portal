class Insurance < ActiveRecord::Base
	has_many :coverages
	has_many :patients, through: :coverages
end
