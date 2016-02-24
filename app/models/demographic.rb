class Demographic < ActiveRecord::Base
	has_many :patients
	has_many :medical_facilities
	has_many :clinical_visits, through: :medical_facilities
	has_many :physicians
end
