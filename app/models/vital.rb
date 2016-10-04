class Vital < ActiveRecord::Base
	has_many :patients
  belongs_to :user
end
