class MedicalHistory < ActiveRecord::Base
	has_many :medical_conditions
	belongs_to :patient
end
