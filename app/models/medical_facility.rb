class MedicalFacility < ActiveRecord::Base
	has_one :demographics
	has_many :clinical_vitals
	has_many :physicians, through :demographics
end
