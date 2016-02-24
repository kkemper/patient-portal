class Physician < ActiveRecord::Base
	has_many :demographics
	has_many :clinical_visits
	has_many :medical_facilities, through :clinical_visits
	has_many :medical_facilities, through :demnographics
end
