class MedicalCondition < ActiveRecord::Base
	has_many :medical_histories
	has_many :patients, through: :medical_histories
end
