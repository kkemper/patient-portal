class ClinicalVisit < ActiveRecord::Base
	has_many :medical_facilities
	has_many :physicians
	has_one :patient
end
