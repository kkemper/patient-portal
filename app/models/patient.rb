class Patient < ActiveRecord::Base
	has_one :demographics
	has_many :medical_facilities, through: :demographics
	has_many :clinical_visits, through: :medical_facilities
	has_many :physicians, through: :clinical_visits
	has_one :medical_histories
	has_many :medical_conditions, through: :medical_histories
	has_one :usernames
	has_one :coverages
	has_one :insurances, through: :coverages
	has_many :vitals
end
